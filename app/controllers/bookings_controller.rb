class BookingsController < ApplicationController
    #before_action :authenticate_user!
    
  #Bookings method  - shows bookings/orders of the current user.
  def index
    unless user_signed_in?
      flash[:notice] = "Please sign up/log in to proceed."
      redirect_to new_user_registration_path
    else
      @bookings = Booking.where("user_id = ?", current_user.id)
    end
  end
  
  
  #Bookings - create method
  def create
    unless user_signed_in?
      flash[:notice] = "Please sign up/log in to proceed."
      redirect_to new_user_registration_path
    else
      #Checkin date can't be saved in first stage due to validation error - checkin date is getting blank - hence its updated later.
      @booking = Booking.new(params_booking)
      if @booking.save
        @booking = Booking.where("user_id = ?", current_user.id).last
        @booking.update_column(:checkin_date, @booking.checkout_date-3)
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
    params.require(:booking).permit(:room_id, :checkin_date, :checkout_date, :user_id, :amount).merge(checkin_date: session[:checkin_date])
  end
end