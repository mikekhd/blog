class ApplicationController < ActionController::Base
  protect_from_forgery
    def current_user
    # find the user by user_id stored in the session
    @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end

  helper_method :current_user
end
