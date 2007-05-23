require 'pp'
module MagicModelsGenerator

  class Schema
    class << self
      cattr_accessor :superklass,
        :belongs_to_associations,
        :has_some_associations,
        :has_many_through_associations

      @@models = nil

      def logger
        @@logger ||= MagicModelsGenerator.logger
      end

      def models
        load_schema if @@models.nil?
        @@models
      end

      def tables
        load_schema if @@tables.nil?
        @@tables
      end

      def table_names
        load_schema if @@table_names.nil?
        @@table_names
      end

      def fks_on_table(table_name)
        load_schema if @@models.nil?
        @@fks_by_table[table_name.to_s] || []
      end

      # active record only support 2 column link tables, otherwise use a model table, has_many and through
      def is_link_table?(table_name)
        load_schema if @@models.nil?
        return @@link_tables[table_name] if ! @@link_tables[table_name].nil?
        column_names = @conn.columns(table_name).map{|x| x.name }
        @@link_tables[table_name] = ! column_names.include?("id") && column_names.length == 2 && column_names.select { |x| x =~ /_id$/ } == column_names
        return @@link_tables[table_name]
      end

      def link_tables_for_class(klass)
        load_schema if @@models.nil?
      end

      def load_schema
        return if ! @@models.nil?
        @@superklass ||= ActiveRecord::Base
        raise "No database connection" if !(@conn = @@superklass.connection)

        @@models = ModelHash.new
        @@tables = Hash.new
        @@fks_by_table = Hash.new
        @@link_tables = Hash.new
        @@belongs_to_associations = Hash.new
        @@has_some_associations = Hash.new
        @@has_many_through_associations = Hash.new

        @@table_names = @conn.tables.sort
        @@table_names -= Ignorable.list

        # Work out which tables are in the model and which aren't
        @@table_names.each do |table_name|

          # a model table then...
          model_class_name = ActiveRecord::Base.class_name(table_name)
          logger.debug "Got a model table: #{table_name} => class #{model_class_name}"

          @@models[model_class_name] = table_name
          @@tables[table_name] = model_class_name

          # Process FKs?
          if @conn.supports_fetch_foreign_keys?
            table_names.each do |table_name|
              logger.debug "Getting FKs for #{table_name}"
              @@fks_by_table[table_name] = Array.new
              @conn.foreign_key_constraints(table_name).each do |fk|
                logger.debug "Got one: #{fk}"
                @@fks_by_table[table_name].push(fk)
              end # do each fk
            end # each table
          end
        end
        
        models.each do |model_name, table_name|
          @@belongs_to_associations[model_name] = []
          @@has_some_associations[model_name] = []
          @@has_many_through_associations[model_name] = []
        end
        
        logger.debug "Loaded all models, now generating associations..."
        
        models.keys.sort.each do |model_name|
          logger.debug "Generating for #{model_name}..."
          table_name = models[model_name]
          generate_associations(model_name, table_name)
        end

      end

      # Used by the generator to access the association code lines for the generated class
      def associations(klass)
        @@belongs_to_associations[klass.to_s] +
        @@has_some_associations[klass.to_s] +
        @@has_many_through_associations[klass.to_s]
      end

    protected
      def generate_associations(model_name, table_name)
      	belongs_to_klass = model_name.constantize rescue return
        logger.debug "Processing model table #{table_name}"

        processed_columns = Hash.new

        # ok, so let's look at the foreign keys on the table...
        
        fks_on_table(table_name).each do |fk|
          logger.debug "Found FK column by suffix _id [#{fk.foreign_key}]"
          has_some_klass = Inflector.classify(fk.reference_table).constantize rescue next
          processed_columns[fk.foreign_key] = { :has_some_klass => has_some_klass }
          processed_columns[fk.foreign_key].merge! add_has_some_belongs_to(belongs_to_klass, fk.foreign_key, has_some_klass) rescue next
        end

        column_names = @conn.columns(table_name).map{ |x| x.name}
        column_names.each do |column_name|
          next if not column_name =~ /_id$/
          logger.debug "Found FK column by suffix _id [#{column_name}]"
          if processed_columns.key?(column_name)
            logger.debug "Skipping, already processed"
            next
          end
          has_some_klass = Inflector.classify(column_name.sub(/_id$/,"")).constantize rescue next
          processed_columns[column_name] = { :has_some_klass => has_some_klass }
          begin
	          processed_columns[column_name].merge! add_has_some_belongs_to(belongs_to_klass, column_name, has_some_klass)
	        rescue
	        	puts $!
	        	next
	       	end
        end

        # is this a link table with attributes? (has_many through?)
        return if processed_columns.keys.length < 2

        processed_columns.keys.each do |key1|
          processed_columns.keys.each do |key2|
            next if key1 == key2
						has_some_class = processed_columns[key1][:has_some_class].to_s
						@@has_many_through_associations[has_some_class] <<
						  "has_many :#{processed_columns[key2][:belongs_to_name].to_s.pluralize.to_sym}, :through => :#{processed_columns[key2][:has_some_name]}"
						logger.debug @@has_many_through_associations[has_some_class].last
          end
        end
      end

      def add_has_some_belongs_to(belongs_to_klass, belongs_to_fk, has_some_klass)
          logger.debug "Trying to add a #{belongs_to_klass} belongs_to #{has_some_klass}..."

          # so this is a belongs_to & has_some style relationship...
          # is it a has_many, or a has_one? Well, let's assume a has_one has a unique index on the column please... good db design, haha!
          unique = belongs_to_klass.get_unique_index_columns.include?(belongs_to_fk)
          belongs_to_name = belongs_to_fk.sub(/_id$/, '').to_sym
          @@belongs_to_associations[belongs_to_klass.to_s] << "belongs_to :#{belongs_to_name}, :class_name => '#{has_some_klass}', :foreign_key => :#{belongs_to_fk.to_sym}"
          logger.debug @@belongs_to_associations[belongs_to_klass.to_s].last

          # work out if we need a prefix
          has_some_name = ((unique ? belongs_to_klass.table_name.singularize : belongs_to_klass.table_name.pluralize) + (belongs_to_name.to_s == has_some_klass.table_name.singularize ? "" : "_as_"+belongs_to_name.to_s)).downcase.to_sym
          method = unique ? :has_one : :has_many
          @@has_some_associations[has_some_klass.to_s] << "#{method} :#{has_some_name}, :class_name => '#{belongs_to_klass.to_s}', :foreign_key => :#{belongs_to_fk.to_sym}"
          logger.debug @@has_some_associations[has_some_klass.to_s].last

          return { :method => method,
          				 :belongs_to_name => belongs_to_name,
          				 :has_some_name => has_some_name,
          				 :has_some_class => has_some_klass  }
			end

    end
  end

  class ModelHash < Hash
    def unenquire(class_id)
      @enquired ||= {}
      @enquired[class_id = class_id.to_s] = false
    end

    def enquired?(class_id)
      @enquired ||= {}
      @enquired[class_id.to_s]
    end

    def [](class_id)
      enquired?(class_id = class_id.to_s)
      @enquired[class_id] = true
      super(class_id)
    end
  end
end
