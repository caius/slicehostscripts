APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__) + "/../"))
APP_VERSION = "0.1"

require "rubygems"
require "activeresource"
require "yaml"

# Load the config
config = YAML.load(open(APP_ROOT + "/config/settings.yml"))

# Setup the constants
CONFIG = config
API_KEY = CONFIG["api_key"]
API_URL = "https://#{API_KEY}@api.slicehost.com/"

# Load the models
Dir[File.join(APP_ROOT, "models", "*.rb")].each do |file|
  require file
end

# Load everything in lib
Dir[File.join(APP_ROOT, "lib", "*.rb")].each do |file|
  require file
end
