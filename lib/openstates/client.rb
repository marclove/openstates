require "congress/connection"
require "congress/request"

module OpenStates
  class Client
    include Congress::Connection
    include Congress::Request

    attr_reader :key

    def initialize(key)
      @key = key
    end
  end
end
