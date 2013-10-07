class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :current_user_json

  protected
  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  def current_user_json
    UserSerializer.new(current_user, root: false).to_json
  end
end
