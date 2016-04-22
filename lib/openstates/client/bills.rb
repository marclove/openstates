module OpenStates
  class Client
    module Bills
      def bills(options = {})
        get("bills", options)
      end

      def bill(id, options = {})
        get("bills/#{id}", options)
      end
    end
  end
end
