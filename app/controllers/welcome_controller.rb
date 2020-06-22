class WelcomeController < ApplicationController
  
  
  #Landing page
  def index
    
  end
  
  #Shows all hotels
  #TODO: Implement a detailed search - ie.only the hotels that have rooms available within the checkin and checkout dates should be displayed.
  def search
    session[:checkin_date] = params[:get_in_date] if params[:get_in_date] && params[:get_in_date] != ""
    session[:checkout_date] = params[:get_out_date] if params[:get_out_date] && params[:get_out_date] != ""
    session[:number_of_guests] = params[:number_of_guests] if params[:number_of_guests] && params[:number_of_guests] != ""
    @hotels = Hotel.all
  end
  
end