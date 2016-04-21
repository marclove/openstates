require "helper"

describe OpenStates::Client::Legislators do
  describe "#legislators", :vcr do
    it "returns all legislators" do
      legislators = client.legislators
      expect(legislators.first.full_name).not_to be_nil
    end
  end

  describe "#legislator", :vcr do
    it "returns a legislator by id" do
      legislator = client.legislator("AKL000031")
      expect(legislator.full_name).to eq("Les Gara")
    end
  end

  describe "#legislators_geo", :vcr do
    it "returns legislators for a latitude and longitude pair" do
      legislators = client.legislators_geo(37.775, -122.418)
      expect(legislators.first.full_name).not_to be_nil
    end
  end
end
