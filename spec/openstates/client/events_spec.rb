require "helper"

describe OpenStates::Client::Events do
  describe "#events", :vcr do
    it "returns all events" do
      events = client.events

      expect(events.count).to be > 0
      assert_requested :get, openstates_url("events")
    end
  end

  describe "#event", :vcr do
    let(:description) { "Task Force Concerning Outcomes Based Financing Meeting (1E)" }

    it "returns event details by id" do
      event = client.event("CTE00129791")

      expect(event.description).to eq(description)
      assert_requested :get, openstates_url("events/CTE00129791")
    end
  end
end
