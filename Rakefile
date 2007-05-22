require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/testtask'
require 'rake/packagetask'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/contrib/rubyforgepublisher'
require 'fileutils'
require 'hoe'
include FileUtils
require File.join(File.dirname(__FILE__), 'lib', 'magic_model_generator', 'version')

AUTHOR = "nicwilliams"  # can also be an array of Authors
EMAIL = "drnicwilliams@gmail.com"
DESCRIPTION = "Generates Rails models from the target database... magically! Validations and associations included."
GEM_NAME = "magic_model_generator" # what ppl will type to install your gem
RUBYFORGE_PROJECT = "magicmodels" # The unix name for your project
HOMEPATH = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"


NAME = "magic_model_generator"
REV = nil # UNCOMMENT IF REQUIRED: File.read(".svn/entries")[/committed-rev="(d+)"/, 1] rescue nil
VERS = ENV['VERSION'] || (MagicModelGenerator::VERSION::STRING + (REV ? ".#{REV}" : ""))
CLEAN.include ['**/.*.sw?', '*.gem', '.config', 'debug.log']
RDOC_OPTS = ['--quiet', '--title', "magic_model_generator documentation",
    "--opname", "index.html",
    "--line-numbers", 
    "--main", "README",
    "--inline-source"]

class Hoe
  def extra_deps 
    @extra_deps.reject { |x| Array(x).first == 'hoe' } 
  end 
end

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
hoe = Hoe.new(GEM_NAME, VERS) do |p|
  p.author = AUTHOR 
  p.description = DESCRIPTION
  p.email = EMAIL
  p.summary = DESCRIPTION
  p.url = HOMEPATH
  p.rubyforge_name = RUBYFORGE_PROJECT if RUBYFORGE_PROJECT
  p.test_globs = ["test/**/test_*.rb"]
  p.clean_globs = CLEAN  #An array of file patterns to delete on clean.

  # == Optional
  p.changes = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  #p.extra_deps     - An array of rubygem dependencies.
  #p.spec_extras    - A hash of extra values to set in the gemspec.
end

desc 'Generate website files'
task :website_generate do
  sh %{ ruby scripts/txt2html website/index.txt > website/index.html }
end

desc 'Upload website files to rubyforge'
task :website_upload do
  config = YAML.load(File.read(File.expand_path("~/.rubyforge/user-config.yml")))
  host = "#{config["username"]}@rubyforge.org"
  remote_dir = "/var/www/gforge-projects/#{RUBYFORGE_PROJECT}/#{GEM_NAME}/"
  local_dir = 'website'
  sh %{rsync -av --delete #{local_dir}/ #{host}:#{remote_dir}}
end

desc 'Generate and upload website files'
task :website => [:website_generate, :website_upload]

desc 'Release the website and new gem version'
task :deploy => [:check_version, :website, :release] do
  # Create SVN tag
  puts "Remember to create SVN tag /tags/REL-#{ENV['VERSION']}"
end

desc 'Runs tasks website_generate and install_gem as a local deployment of the gem'
task :local_deploy => [:website_generate, :install_gem]

task :check_version do
  unless ENV['VERSION']
    puts 'Must pass a VERSION=x.y.z release version'
    exit
  end
  unless ENV['VERSION'] == VERS
    puts "Please update your version.rb to match the release version, currently \#{VERS}"
    exit
  end
end
