class RoomsController < ApplicationController
  
  def search_rooms
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.where(:hotel_id => params[:hotel_id])
    session[:checkin_date] = params[:get_in_date] if params[:get_in_date] && params[:get_in_date] != ""
    session[:checkout_date] = params[:get_out_date] if params[:get_out_date] && params[:get_out_date] != ""
    session[:number_of_guests] = params[:number_of_guests] if params[:number_of_guests] && params[:number_of_guests] != ""
    @booking = Booking.new
  end
  
  
  
end