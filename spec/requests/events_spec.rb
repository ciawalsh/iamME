require 'rails_helper'

RSpec.describe "Events", type: :request do

  describe "GET /events" do

    it "returns event as json" do
      event = create(:event)
      date = event.date.strftime('%Y-%m-%d')
      
      get "/events/#{event.id}.json"
      
      expect_json({name: "Football", date: date})
    end

    it "when non-existent id is searched for, returns message as json" do
      get "/events/21312312.json"

      expect_json({message: "User not found"});
    end
      
  end

  describe "POST /events" do

    it "creates an event" do
      post "/events.json", :event => {name: "Rollerderby", date: Date.new}

      expect(response).to be_success
      expect(Event.find_by_name("Rollerderby")).not_to be_nil
    end

  end


end
