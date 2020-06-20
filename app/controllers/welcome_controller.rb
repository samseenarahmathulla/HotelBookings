class WelcomeController < ApplicationController
  
  def index
    
  end
  
  def search
    session[:checkin_date] = params[:get_in_date] if params[:get_in_date] && params[:get_in_date] != ""
    session[:checkout_date] = params[:get_out_date] if params[:get_out_date] && params[:get_out_date] != ""
    session[:number_of_guests] = params[:number_of_guests] if params[:number_of_guests] && params[:number_of_guests] != ""
    @hotels = Hotel.all
    #@bookings = Booking.all
    #Surgeon.joins(:location).where("surgeons.location_id IN (#{@location_ids}) AND surgeons.procedure_types LIKE '%#{params[:procedure_types]}%, %#{params[:area_of_discomfort]}%'").select("locations.*, surgeons.*, locations.id, surgeons.id as surgeon_id").group("locations.id, surgeons.id")

  end
  
end