$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require "openstates"
require "rspec"
require "webmock/rspec"

require "vcr"
VCR.configure do |c|
  c.configure_rspec_metadata!
  c.cassette_library_dir = "spec/cassettes"
  c.hook_into :webmock

  c.filter_sensitive_data("<SUNLIGHT_API_KEY>") do
    test_sunlight_api_key
  end
end

def test_sunlight_api_key
  ENV.fetch("SUNLIGHT_API_KEY", "x" * 32)
end

def client
  OpenStates::Client.new(test_sunlight_api_key)
end
