require "faraday_middleware"

module OpenStates
  module Connection
    API_ENDPOINT = "https://openstates.org/api/v1/".freeze

    private

    def connection
      @connection ||= create_connection
    end

    def create_connection
      Faraday.new(API_ENDPOINT) do |conn|
        conn.request :json
        conn.response :mashify
        conn.response :json
        conn.response :logger if log
        conn.response :follow_redirects, limit: 1

        conn.adapter Faraday.default_adapter
      end
    end
  end
end
