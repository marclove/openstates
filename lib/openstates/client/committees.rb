module OpenStates
  class Client
    module Committees
      def committees(options = {})
        get("committees", options)
      end
    end
  end
end
