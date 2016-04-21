module OpenStates
  class Client
    module Events
      def events(options = {})
        get("events", options)
      end

      def event(id, options = {})
        get("events/#{id}", options)
      end
    end
  end
end
