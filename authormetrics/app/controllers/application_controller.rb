class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  #include Error::ErrorHandler

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
    end

    # protect_from_forgery prepend: true
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :surname, :birth_date, :username])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    end
end
