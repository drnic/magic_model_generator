require 'rubygems'
require 'pp'

class Hash
  # lets through the keys in the argument
  # >> {:one => 1, :two => 2, :three => 3}.pass(:one)
  # => {:one=>1}
  def pass(*keys)
    tmp = self.clone
    keys = keys[0] if keys[0].is_a? Array
    tmp.delete_if {|k,v| ! keys.include?(k) }
    tmp
  end

	def merge_with_prefix(prefix, hash)
		merged = clone
		hash.each {|key, value| merged.merge!("#{prefix}_#{key}" => value)}
		merged
	end

	def merge_with_prefix!(prefix, hash)
		hash.each {|key, value| merge!("#{prefix}_#{key}" => value)}
	end
end

class Rails::Generator::Manifest
	attr_reader :actions

  def copy_actions(manifest)
		@actions.concat(manifest.actions)
  end
end

module Rails
  module Generator
  	class DynamicNamedBase < Rails::Generator::Base
  		attr_reader		:all_attrs,
  		              :name, :class_name, :singular_name, :plural_name, :table_name,
  		              :class_path, :file_path, :class_nesting, :class_nesting_depth
      attr_accessor :superklass, :class_contents
  		alias_method  :file_name,  :singular_name
      attr_reader		:controller_name,
                    :controller_class_path,
                    :controller_file_path,
                    :controller_class_nesting,
                    :controller_class_nesting_depth,
                    :controller_class_name,
                    :controller_singular_name,
                    :controller_plural_name
      alias_method  :controller_file_name,  :controller_singular_name
      alias_method  :controller_table_name, :controller_plural_name
      #alias_method  :base_controller_file_path, :controller_file_path

			MODEL_ATTRS = %w(name class_name singular_name plural_name
						table_name class_path file_path class_nesting
						class_nesting_depth file_name singular_name
						superklass class_contents)
			CONTROLLER_ATTRS = %w(controller_name controller_class_path 
						controller_file_path controller_class_nesting
						controller_class_nesting_depth controller_class_name 
						controller_singular_name controller_plural_name)

  		def initialize(runtime_args, runtime_options = {})
  			super

  			# No arguments are required.
  			usage if runtime_args.length > 0

  			@all_attrs = {}

  		end

		protected
			def load_attrs(key)
				all_attrs[key] = {} if not all_attrs[key]
				MODEL_ATTRS.concat(CONTROLLER_ATTRS).each do |attr|
					instance_variable_set "@#{attr.to_s}", all_attrs[key][attr]
				end
				all_attrs[key]
			end

			def store_attrs(key)
				all_attrs[key] = instance_values.pass(MODEL_ATTRS.concat(CONTROLLER_ATTRS))
			end

			def assign_names!(name)
        @superklass ||= ActiveRecord::Base
				@name = name
				base_name, @class_path, @file_path, @class_nesting, @class_nesting_depth = extract_modules(@name)
				@class_name_without_nesting, @singular_name, @plural_name = inflect_names(base_name)
				@table_name = ActiveRecord::Base.pluralize_table_names ? plural_name : singular_name
				if @class_nesting.empty?
					@class_name = @class_name_without_nesting
				else
					@class_name = "#{@class_nesting}::#{@class_name_without_nesting}"
				end
				
        @controller_name ||= ActiveRecord::Base.pluralize_table_names ? @name.pluralize : @name
    
        base_name, @controller_class_path, @controller_file_path, @controller_class_nesting, @controller_class_nesting_depth = extract_modules(@controller_name)
        @controller_class_name_without_nesting, @controller_singular_name, @controller_plural_name = inflect_names(base_name)
    
        if @controller_class_nesting.empty?
          @controller_class_name = @controller_class_name_without_nesting
        else
          @controller_class_name = "#{@controller_class_nesting}::#{@controller_class_name_without_nesting}"
        end
			end

			# Extract modules from filesystem-style or ruby-style path:
			#   good/fun/stuff
			#   Good::Fun::Stuff
			# produce the same results.
			def extract_modules(name)
				modules = name.include?('/') ? name.split('/') : name.split('::')
				name    = modules.pop
				path    = modules.map { |m| m.underscore }
				file_path = (path + [name.underscore]).join('/')
				nesting = modules.map { |m| m.camelize }.join('::')
				[name, path, file_path, nesting, modules.size]
			end

			def inflect_names(name)
				camel  = name.camelize
				under  = camel.underscore
				plural = under.pluralize
				[camel, under, plural]
			end
		end
	end
end

class MagicModelGenerator < Rails::Generator::DynamicNamedBase
  default_options :skip_migration => true

  attr_reader   :models

  def initialize(runtime_args, runtime_options = {})
  	super
    require destination_root + '/config/boot'
    superklass ||= ActiveRecord::Base
    raise "No database connection" if !(@conn = superklass.connection)
    
    @table_names = @conn.tables.sort
    
    # Work out which tables are in the model and which aren't
    @models = @table_names.map do |table_name|
      superklass.class_name(table_name)
    end

		@models.each do |base_name|
			load_attrs(base_name)
			assign_names!(base_name)
			store_attrs(base_name)
		end
  end

  def manifest
    record do |m|
			load_attrs(@models.first)

			# Model, test, and fixture directories.
			m.directory File.join('app/models', class_path)
			#m.directory File.join('test/unit', class_path)
			#m.directory File.join('test/fixtures', class_path)


    	@models.each do |model_name|
				attrs = load_attrs(model_name)

        attrs['class_contents'] = '  # associations go here'

				# Check for class naming collisions.
				m.class_collisions class_path, class_name, "#{class_name}Test"

				# Model class, unit test, and fixtures.
				m.template 'model.rb',      File.join('app/models', class_path, "#{file_name}.rb"), :assigns => attrs
				#m.template 'unit_test.rb',  File.join('test/unit', class_path, "#{file_name}_test.rb"), :assigns => attrs
				#m.template 'fixtures.yml',  File.join('test/fixtures', class_path, "#{table_name}.yml"), :assigns => attrs

    	end

    end
  end

protected
  def banner
    "Usage: #{$0} magic_model"
  end

  def add_options!(opt)
    #opt.separator ''
    #opt.separator 'Options:'
    #opt.on("--skip-migration",
    #       "Don't generate a migration file for this model") { |v| options[:skip_migration] = v }
  end
  
end