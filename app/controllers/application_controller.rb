class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:first_name,:last_name,:first_name_kana,:last_name_kana,:sex,:tel,:email])
  end
  
  private
  def user_params
    params.require(:user).permit(:nickname,:first_name,:last_name,:first_name_kana,:last_name_kana,:sex,:tel,:email,:password).merge(user_id: current_user.id)
  end
  
  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth][:user] && password == Rails.application.credentials[:basic_auth][:pass]
    end
  end
end
