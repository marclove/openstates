require "faraday_middleware"

module OpenStates
  module Connection
    ENDPOINT = "http://openstates.org/api/v1/".freeze

    private

    def connection
      @connection ||= create_connection
    end

    def create_connection
      Faraday.new(ENDPOINT) do |conn|
        conn.request :json
        conn.headers[:"X-APIKEY"] = @api_key

        conn.response :mashify
        conn.response :json
        conn.response :logger
        conn.response :follow_redirects, limit: 1

        conn.adapter Faraday.default_adapter
      end
    end
  end
end
