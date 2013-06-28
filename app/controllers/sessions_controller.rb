class SessionsController < ApplicationController
  def new
  end
  def create
    # fetch user name and email from database table (params)
     session_user = params[:session]
     #then find the user by email
     user = User.find_by_email(session_user[:email])
     if user and user.authenticate(session_user[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in successfully."
      else
      # if there is no user by that email show error
      # or  if password is wrong -> show error
      redirect_to login_url, notice: "Invalid email/password."
    end
  end
  def destroy
     session[:user_id] = nil
     @current_user = nil
     redirect_to root_url, notice: "Logged out."
  end
end
