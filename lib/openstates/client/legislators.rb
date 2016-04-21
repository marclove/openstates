module OpenStates
  class Client
    module Legislators
      def legislators(options = {})
        get("legislators", options)
      end

      def legislator(id, options = {})
        get("legislators/#{id}", options)
      end

      def legislators_geo(lat, long, options = {})
        options.merge!(lat: lat, long: long)
        get("legislators/geo", options)
      end
    end
  end
end
