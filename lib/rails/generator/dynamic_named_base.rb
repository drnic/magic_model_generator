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

			@@model_attrs = %w(name class_name singular_name plural_name
						table_name class_path file_path class_nesting
						class_nesting_depth file_name singular_name
						superklass class_contents)
			@@controller_attrs = %w(controller_name controller_class_path 
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
				@@model_attrs.concat(@@controller_attrs).each do |attr|
					instance_variable_set "@#{attr.to_s}", all_attrs[key][attr]
				end
				all_attrs[key]
			end

			def store_attrs(key)
				all_attrs[key] = instance_values.pass(@@model_attrs.concat(@@controller_attrs))
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
