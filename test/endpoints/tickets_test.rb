require "test_helper"

describe Endpoints::Tickets do
  def app
    Endpoints::Tickets
  end

  describe "GET /tickets" do
    before do
      @t = Ticket.create(body: "hello world")
    end

    it "succeeds" do
      get "/tickets"
      assert_equal 200, last_response.status
      assert last_response.body.include? "hello world"
    end
  end
end
