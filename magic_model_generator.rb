require 'rubygems'
require 'pp'
require 'dr_nic_magic_models'
require 'rails/generator/dynamic_named_base'
require 'rails/generator/manifest'

class MagicModelGenerator < Rails::Generator::DynamicNamedBase
  default_options :skip_migration => true

  attr_reader   :models

  def initialize(runtime_args, runtime_options = {})
  	super
  begin
    require destination_root + '/config/boot'
    
    require 'magic_model_generator'
    superklass ||= ActiveRecord::Base
    MagicModelsGenerator::Schema.superklass = superklass
    @models = MagicModelsGenerator::Schema.models.keys.sort

    @models.each do |base_name|
      puts "Preparing #{base_name}..."
      load_attrs(base_name)
      assign_names!(base_name)
      store_attrs(base_name)
    end
  rescue
    puts $!
    puts $@
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
      begin
        puts "Attribute loading for #{model_name}..."
        attrs = load_attrs(model_name)

        begin
          klass = class_name.constantize 
        rescue 
          puts $!
          puts $@
          next
        end
        puts "Building model #{model_name}..."
        commands = MagicModelsGenerator::Schema.associations(klass)
        commands += MagicModelsGenerator::Validations.generate_validations(klass)
        attrs['class_contents'] = commands.join("\n  ")
        
        # Check for class naming collisions.
        m.class_collisions class_path, class_name, "#{class_name}Test"
        
        # Model class, unit test, and fixtures.
        m.template 'model.rb',      File.join('app/models', class_path, "#{file_name}.rb"), :assigns => attrs
        #m.template 'unit_test.rb',  File.join('test/unit', class_path, "#{file_name}_test.rb"), :assigns => attrs
        #m.template 'fixtures.yml',  File.join('test/fixtures', class_path, "#{table_name}.yml"), :assigns => attrs
      rescue
        puts $!
        puts $@
      end
      end

      @models.each {|model| Object.send(:remove_const, model) rescue nil }
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