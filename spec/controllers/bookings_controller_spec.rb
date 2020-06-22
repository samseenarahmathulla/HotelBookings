require "rails_helper"

RSpec.describe BookingsController, :type => :controller do
  
  
  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    @hotel = FactoryGirl.create(:hotel)
    @room = FactoryGirl.create(:room, hotel: @hotel)
    @booking = FactoryGirl.create(:booking, user: @user, room: @room)
  end
  
  describe "GET #index" do
    
    it "renders the index template - show the bookings list page - if authenticated" do
      get :index
      expect(response).to render_template("index")
    end
    
    it "is expected to return success status if authenticated" do
        get :index
        expect(response.status).to eq(200)
    end
  
    
  end
  
  
  describe "POST #create" do
    it "is expected to return redirect status " do
        post :create, params: { booking: {room_in_date: @booking.room_in_date, room_out_date: @booking.room_out_date, amount: @booking.amount, user_id: @user.id, room_id: @room.id} }
        expect(response.status).to eq(302)
    end
    
    it "is expected to redirect to bookings_path " do
        post :create, params: { booking: {room_in_date: @booking.room_in_date, room_out_date: @booking.room_out_date, amount: @booking.amount, user_id: @user.id, room_id: @room.id} }
        expect(response).to redirect_to bookings_path
    end
    
    it "is expected to set flash notice message" do
        post :create, params: { booking: {room_in_date: @booking.room_in_date, room_out_date: @booking.room_out_date, amount: @booking.amount, user_id: @user.id, room_id: @room.id} }
        expect(flash[:notice]).to eq('Your booking is successfull.')
      end
    
    it 'validation error - is expected to redirect to root' do
        post :create, params: { booking: {room_in_date: nil, room_out_date: @booking.room_out_date, amount: @booking.amount, user_id: @user.id, room_id: @room.id} }
        is_expected.to redirect_to "/"
      end
    
    it "validation error - is expected to set flash alert message" do
        post :create, params: { booking: {room_in_date: nil, room_out_date: @booking.room_out_date, amount: @booking.amount, user_id: @user.id, room_id: @room.id} }
        expect(flash[:alert]).to eq('Something went wrong. Please try again.')
      end
    
    it "validation error - is expected to add errors to room_in_date attribute" do
        post :create, params: { booking: {room_in_date: nil, room_out_date: @booking.room_out_date, amount: @booking.amount, user_id: @user.id, room_id: @room.id} }
        expect(assigns[:booking].errors[:room_in_date]).to eq(['can\'t be blank'])
    end
  end
   
    
    
  
end
