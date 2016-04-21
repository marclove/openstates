module OpenStates
  class Client
    module Committees
      def committees(options = {})
        get("committees", options)
      end

      def committee(id, options = {})
        get("committees/#{id}", options)
      end
    end
  end
end
