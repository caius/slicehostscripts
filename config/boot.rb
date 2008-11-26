require "singleton"

class App
  include Singleton
  
  ROOT = File.expand_path(File.join(File.dirname(__FILE__) + "/../"))
  VERSION = "0.1"
  
  # It goes Dongg
  def self.boot
    app = App
    app.require_gems
    app.setup_config
    app.load_files
    app
  end
  
  # Require ze gems
  def self.require_gems
    %w(rubygems activeresource yaml).each do |gem_name|
      begin
        require gem_name
      rescue LoadError
        puts "There was an error loading \"#{gem_name}\"."
        exit!(1)
      end
    end
    true
  end

  # Load the config
  def self.setup_config
    config = YAML.load(open(App::ROOT + "/config/settings.yml"))
    @config = config
    @config["API_URL"] = "https://#{@config["API_KEY"]}@api.slicehost.com/"
    true
  end
  
  # Load ./models/*.rb and ./lib/*.rb
  def self.load_files
    # Load the models
    Dir[File.join(App::ROOT, "models", "*.rb")].each do |file|
      require file
    end

    # Load everything in lib
    Dir[File.join(App::ROOT, "lib", "*.rb")].each do |file|
      require file
    end
    true
  end
  
  def self.config
    @config
  end
  
end

# Boot unless already booted
APP = App::boot unless (Object.const_get("APP") rescue false)
