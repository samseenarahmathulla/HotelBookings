class BookingsController < ApplicationController
    #before_action :authenticate_user!
  def index
    unless user_signed_in?
      flash[:notice] = "Please sign up/log in to proceed."
      redirect_to new_user_registration_path
    else
      @bookings = Booking.where("user_id = ?", current_user.id)
    end
  end
  
  
  def create
    unless user_signed_in?
      flash[:notice] = "Please sign up/log in to proceed."
      redirect_to new_user_registration_path
    else
      @booking = Booking.new(params_booking)
    if @booking.save
        flash[:notice] = "Your booking is successfull."
        redirect_to bookings_path 
    else
       flash[:alert] = "Something went wrong. Please try again."
        redirect_to "/" 
    end
    end
    
  end
  
  
  private
  def params_booking
    params.require(:booking).permit(:room_id, :user_id, :checkin_date, :checkout_date, :amount)
  end
end