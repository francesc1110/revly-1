class SessionController < ApplicationController

  # login page
  def new
    # if the user is already logged in, redirect to user profile
    unless session[:user_id].nil?
      redirect_to root_path

    # otherwise show the login page
    else
      render(:new)
    end
  end

  # user submits a login request
  def create
    # query database for user with matching email
    user = User.find_by(email: params[:email])
    # does the user exists and is the password correct?
    if user && user.authenticate(params[:password])

      # save the user's id in the session hash
      session[:user_id] = user.id

      # redirect to the user's profile page
      redirect_to root_path
    else
      #otherwise, the user has entered in an incorrect combo
      @message = "The email and password combination does not match, try again."
      render :new
    end
  end

  # user logs out
  def destroy
    # nullifies the user's id
    session[:user_id] = nil

    # then redirects the user back home
    redirect_to root_path
  end

end
