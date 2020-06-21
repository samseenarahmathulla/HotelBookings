require "rails_helper"

RSpec.describe RoomsController, :type => :controller do
  
  
  before(:each) do
    @hotel = FactoryGirl.create(:hotel)
  end
  
  describe "GET #search_rooms" do
    it "renders the search_rooms template" do
      get :search_rooms, params: {hotel_id: @hotel.id}
      expect(response).to render_template("search_rooms")
    end
    
    it "is expected to return success status" do
        get :search_rooms, params: {hotel_id: @hotel.id}
        expect(response.status).to eq(200)
    end
  end
   
    
    
  
end
