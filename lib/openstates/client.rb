require "openstates/connection"
require "openstates/request"

module OpenStates
  class Client
    include OpenStates::Connection
    include OpenStates::Request

    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end

    def legislators(options = {})
      get('legislators', options)
    end
  end
end
