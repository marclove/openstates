$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require "openstates"
require "rspec"
require "webmock/rspec"

require "vcr"
VCR.configure do |c|
  c.configure_rspec_metadata!
  c.cassette_library_dir = "spec/cassettes"
  c.hook_into :webmock
end
