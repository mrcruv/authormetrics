
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller? 


  def route_not_found
    render 'public/404', status: :not_found, layout: false
  end

  rescue_from ActiveRecord::RecordNotFound do |e|
      render 'public/404'
  end
  rescue_from ActiveRecord::ActiveRecordError do |e|
      render "public/422"
  end
  rescue_from CanCan::AccessDenied do
    render "public/401"
  end
  rescue_from StandardError do |e|
    render "public/500"
  end
  rescue_from ActionController::RoutingError do |e|
    render 'public/404'
  end
  rescue_from Errno do |e|
    render 'public/404'
  end



  # protect_from_forgery prepend: true

    def current_ability
      if administrator_signed_in?
        @current_ability ||= Ability.new(current_administrator)
      else
        @current_ability ||= Ability.new(current_user)
      end
    end
  

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :surname, :birth_date, :username])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    end
    def respond(_error, _status, _message)
      json = Helpers::Render.json(_error, _status, _message)
      render json: json
    end 
end

