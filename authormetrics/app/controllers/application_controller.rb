class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
=begin
  rescue_from ActiveRecord::RecordNotFound do |e|
    respond(:record_not_found, 404, e.to_s)
  end
  rescue_from ActiveRecord::ActiveRecordError do |e|
    respond(e.error, 422, e.to_s)
  end
  #rescue_from ActiveModel::ValidationError do |e|
   # respond(e.error, 422, e.to_s)
  #end
  #rescue_from CustomApiError do |e|
  #  respond(e.error, e.status, e.message.to_s)
  #end
  rescue_from CanCan::AccessDenied do
    respond(:forbidden, 401, "current user isn't authorized for that")
  end
  rescue_from StandardError do |e|
    respond(:standard_error, 500, e.to_s)
    #get /500
  end
=end
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
