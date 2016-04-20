module OpenStates
  module Connection
    ENDPOINT = "http://openstates.org/api/v1/".freeze

    private

    def connection
      @connection ||= create_connection
    end

    def create_connection
      Faraday.new(url: ENDPOINT) do |connection|
        middlewares.each { |middleware| connection.user(middleware) }
        connection.adapter(Faraday.default_adapter)
      end
    end

    def middlewares
      [
        Faraday::Request::UrlEncoded,
        Faraday::Response::RaiseError,
        Faraday::Response::Mashify,
        Faraday::Response::ParseJson
      ]
    end
  end
end
