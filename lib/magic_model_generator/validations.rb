module MagicModelGenerator
  module Validations

    # Returns an array of strings describing validations for this class
    def self.generate_validations(klass)

      logger = MagicModelGenerator.logger

      # Code reworked from http://www.redhillconsulting.com.au/rails_plugins.html
      # Thanks Red Hill Consulting for using an MIT licence :o)

      validations = []
      klass.columns.
        reject { |column| column.name =~ /(?i)^(((created|updated)_(at|on))|position|type|id)$/ }.
        reject { |column| column.name =~ /_id$/ }.
        each do |column|
        
        # Active record seems to interpolate booleans anyway to either true, false or nil...
        if column.type == :boolean
          validations << "validates_inclusion_of :#{column.name}, :in => [true, false], :allow_nil => #{column.null}, :message => ActiveRecord::Errors.default_error_messages[:blank]"
          logger.debug validations.last
        elsif !column.null
          validations << "validates_presence_of :#{column.name}"
          logger.debug validations.last
        end

        if column.type == :integer
          validations << "validates_numericality_of :#{column.name}, :allow_nil => #{column.null.inspect}, :only_integer => true"
          logger.debug validations.last
        elsif column.number?
          validations << "validates_numericality_of :#{column.name}, :allow_nil => #{column.null.inspect}"
          logger.debug validations.last
        elsif column.text? && column.limit
          validations << "validates_length_of :#{column.name}, :allow_nil => #{column.null.inspect}, :maximum => #{column.limit}"
          logger.debug validations.last
        end
        
      end
      
      # Single-column UNIQUE indexes
      klass.get_unique_index_columns.each do |col|
        validations << "validates_uniqueness_of :#{col}"
        logger.debug validations.last
      end                  
      
      validations
    end    
  end
end
