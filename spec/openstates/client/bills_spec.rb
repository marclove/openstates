require "helper"

describe OpenStates::Client::Bills do
  describe "#bills", :vcr do
    it "returns bills for a state" do
      bills = client.bills(state: "nc")

      expect(bills.count).to be > 0
      assert_requested :get, openstates_url("bills?state=nc")
    end
  end

  describe "#bill", :vcr do
    it "returns bill details by id" do
      bill = client.bill("NCB00008846")

      expect(bill.actions.count).to be > 0
      assert_requested :get, openstates_url("bills/NCB00008846")
    end
  end
end
