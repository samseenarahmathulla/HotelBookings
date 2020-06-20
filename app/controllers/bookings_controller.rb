class BookingsController < ApplicationController
  
  
  def new
    #sign up/login to continue
    unless user_signed_in?
      redirect_to new_user_registration_path
    end
  end
  
  
  def create
    unless user_signed_in?
      redirect_to new_user_registration_path
    end
    @booking = Booking.new(params_booking)
    if @booking.save
        flash[:notice] = "Your booking is successfull."
        redirect_to "/"
    else
       flash[:alert] = "Something went wrong. Please try again"
        redirect_to "/"
    end
  end
  
  def show
    
  end
  
  private
  def params_booking
    params.require(:booking).permit(:room_id, :user_id, :checkin_date, :checkout_date, :amount)
  end
end