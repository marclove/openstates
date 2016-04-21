require "helper"

describe OpenStates::Client::Legislators do
  let(:client) { OpenStates::Client.new("9cb84991967f479a8f361871a04cac73") }

  describe "#legislators", :vcr do
    it "returns all legislators" do
      legislators = client.legislators
      expect(legislators.first.full_name).not_to be_nil
    end
  end

  describe "legislator" do
    pending "implement"
  end

  describe "legislators_geo" do
    pending "implement"
  end
end
