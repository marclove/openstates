module OpenStates
  class Client
    module Bills
      def bills(options = {})
        get("bills", options)
      end

      def bill(id, state, session, options = {})
        get("bills/#{state}/#{session}/#{id}", options)
      end
    end
  end
end
