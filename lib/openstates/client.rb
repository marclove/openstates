require "openstates/connection"
require "openstates/request"
require "openstates/client/legislators"

module OpenStates
  class Client
    include OpenStates::Connection
    include OpenStates::Request
    include OpenStates::Client::Legislators

    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end
  end
end
