class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  # load_and_authorize_resource

  # load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :address, :telephone, :email, :password)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :address, :telephone, :email, :password, :current_password)}

  end
end
