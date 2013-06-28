class SessionsController < ApplicationController
  def new
  end
  def create
    # fetch user name and email from database table (params)
     session_user = params[:session]
     #then find the user by email
     user = User.find_by_email(session_user[:email])
  end
  def destroy
    
  end
end
