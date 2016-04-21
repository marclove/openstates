module OpenStates
  class Client
    module Legislators
      def legislators(options = {})
        get('legislators', options)
      end
    end
  end
end
