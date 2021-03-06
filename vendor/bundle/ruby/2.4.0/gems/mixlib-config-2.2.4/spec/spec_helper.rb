$TESTING = true
$:.push File.join(File.dirname(__FILE__), "..", "lib")

require "rspec"
require "mixlib/config"

class ConfigIt
  extend Mixlib::Config
end

RSpec.configure do |config|
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.warnings = true
end
