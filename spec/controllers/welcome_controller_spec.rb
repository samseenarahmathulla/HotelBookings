require "rails_helper"

RSpec.describe WelcomeController, :type => :controller do
  
  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
    
    it "is expected to return success status" do
        get :index
        expect(response.status).to eq(200)
    end
  end
  
  describe "GET #search" do
    it "renders the search template" do
      get :search
      expect(response).to render_template("search")
    end
    
    it "is expected to return success status" do
        get :search
        expect(response.status).to eq(200)
    end
  end
   
    
    
  
end
