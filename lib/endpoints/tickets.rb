module Endpoints
  class Tickets < Base
    namespace "/tickets" do
      get do
        tickets = Ticket.all
        tickets.to_json
      end

      delete "/:id" do |id|
      end

      patch "/:id" do |id|
      end

      post do
      end
    end
  end
end
