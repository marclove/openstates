module OpenStates
  class Client
    module Districts
      def districts(state, chamber = nil)
        path = if chamber
          "districts/#{state}/#{chamber}"
        else
          "districts/#{state}"
        end

        get(path)
      end

      def district_boundary(boundary_id)
        get("districts/boundary/#{boundary_id}")
      end
    end
  end
end
