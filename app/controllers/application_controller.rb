class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  # protected
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end

  private
  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |name, password|
      name == Rails.application.credentials[:basic_auth][:name] && password == Rails.application.credentials[:basic_auth][:password]
    end
  end
  
end
