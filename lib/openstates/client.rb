require "openstates/connection"
require "openstates/request"
require "openstates/client/legislators"
require "openstates/client/committees"

module OpenStates
  class Client
    include OpenStates::Connection
    include OpenStates::Request
    include OpenStates::Client::Legislators
    include OpenStates::Client::Committees

    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end
  end
end
