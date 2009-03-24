$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module MagicModelGenerator
  VERSION = '0.0.1'

  def self.logger; @@logger ||= RAILS_DEFAULT_LOGGER rescue Logger.new(STDERR); end
end
