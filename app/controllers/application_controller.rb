class ApplicationController < ActionController::Base
  after_action :store_action
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  
  
  #To redirect to the previous page - from bookings 
  def store_action
    return unless request.get? 
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:user, request.fullpath)
    end
  end
  
  protected
  
  #To add user name and phone number in addition to the devise fields.
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :phone)}
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :phone)}
  end
end

