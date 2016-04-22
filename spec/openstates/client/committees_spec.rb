require "helper"

describe OpenStates::Client::Committees do
  describe "#committees", :vcr do
    it "returns all committess" do
      committees = client.committees

      expect(committees.count).to be > 0
      assert_requested :get, openstates_url("committees")
    end
  end

  describe "#committee", :vcr do
    it "returns committee details by id" do
      committee = client.committee("AKC000001")

      expect(committee.committee).to eq("Community & Regional Affairs")
      assert_requested :get, openstates_url("committees/AKC000001")
    end
  end
end
