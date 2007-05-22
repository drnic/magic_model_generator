module MagicModelGenerator
  def self.logger; @@logger ||= RAILS_DEFAULT_LOGGER rescue Logger.new(STDERR); end
end

Dir[File.join(File.dirname(__FILE__), '**/*.rb')].sort.each { |lib| require lib }

