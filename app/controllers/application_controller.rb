class ApplicationController < ActionController::Base

def after_sign_in_path_for(resource) 
  users_path
end
def after_sign_out_path_for(resource) 
  root_path
end
def after_account_update_path_for(resource)
  users_path
end

  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :self_introduction, :sex, :img_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :self_introduction, :sex, :img_name])
  end
end
