require "openstates/connection"
require "openstates/request"
require "openstates/client/bills"
require "openstates/client/committees"
require "openstates/client/legislators"
require "openstates/client/states"

module OpenStates
  class Client
    include OpenStates::Connection
    include OpenStates::Request
    include OpenStates::Client::Bills
    include OpenStates::Client::Committees
    include OpenStates::Client::Legislators
    include OpenStates::Client::States

    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end
  end
end
