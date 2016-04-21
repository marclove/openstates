module OpenStates
  class Client
    module States
      def states(options = {})
        get("metadata", options)
      end

      def state(abbreviation, options = {})
        get("metadata/#{abbreviation}", options)
      end
    end
  end
end
