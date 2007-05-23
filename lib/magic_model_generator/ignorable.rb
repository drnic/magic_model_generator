module MagicModelsGenerator
  class Ignorable
    
    def self.list
      @@ignorable_list ||= %w[schema_info]
    end
  end
end