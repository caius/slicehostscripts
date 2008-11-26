APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__) + "/../"))

require "rubygems"
require "activeresource"
require "yaml"

# Load the config
config = YAML.load(open(APP_ROOT + "/config/settings.yml"))

# Setup the constants
API_KEY = config["api_key"]
API_URL = "https://#{API_KEY}@api.slicehost.com/"

# Load the models
Dir[File.join(APP_ROOT, "/models/*.rb")].each do |file|
  require file
end
