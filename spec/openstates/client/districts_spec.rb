require "helper"

describe OpenStates::Client::Districts do
  describe "#districts", :vcr do
    let(:state) { "ny" }
    let(:chamber) { "upper" }

    it "returns districts for a state" do
      districts = client.districts(state)

      expect(districts.count).to be > 0
      assert_requested :get, openstates_url("districts/#{state}")
    end

    it "returns districts for a state and chamber" do
      districts = client.districts(state, chamber)

      expect(districts.count).to be > 0
      assert_requested :get, openstates_url("districts/#{state}/#{chamber}")
    end
  end

  describe "#district_boundary", :vcr do
    let(:boundary_id) { "ocd-division/country:us/state:ny/sldl:100" }
    let(:bbox) { [[41.416715, -75.146446], [42.016375, -74.276983]] }

    it "returns district boundaries for a boundary_id" do
      district = client.district_boundary(boundary_id)

      expect(district.bbox).to eq(bbox)
      assert_requested :get, openstates_url("districts/boundary/#{boundary_id}")
    end
  end
end
