module OpenStates
  class Client
    module Legislators
      def legislators(options = {})
        get('legislators', options)
      end

      def legislator(id, options = {})
        get("legislators/#{id}", options)
      end
    end
  end
end
