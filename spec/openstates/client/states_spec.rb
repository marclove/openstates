require "helper"

describe OpenStates::Client::States do
  describe "#states", :vcr do
    it "returns all states" do
      states = client.states

      expect(states.count).to be > 0
      assert_requested :get, openstates_url("metadata")
    end
  end

  describe "#state", :vcr do
    it "returns state metadata by abbreviation" do
      state = client.state("ny")

      expect(state.name).to eq("New York")
      assert_requested :get, openstates_url("metadata/ny")
    end
  end
end
