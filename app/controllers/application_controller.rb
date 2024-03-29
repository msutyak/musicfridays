class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_filter :add_sanitized_params, if: :devise_controller?

  def add_sanitized_params
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:password, :password_confirmation)}
  end
end
