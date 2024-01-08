class ApplicationController < ActionController::Base
    
include Pundit
before_action :configure_permitted_parameters, if: :devise_controller?

rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, alert: exception.message+"  You Cannot access this page"
end
    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type,:username, :email, :password])
  end 

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to root_path
  end

  
end
