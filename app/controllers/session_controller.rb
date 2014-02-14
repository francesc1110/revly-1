class SessionController < ApplicationController

before_action :load_user, only: [:new, :create]

  def new
    # if the user is already logged in, redirect to user profile
    unless @user.nil?
      redirect_to ( user_path(user) )

    # otherwise show the login page
    else
      render(:new)
    end
  end

  def create
    # does the user exists and is the password correct?
    if @user && @user.authenticate(params[:password])

      # save the user's id in the session hash
      session[:user_id] = @user.id

      # redirect to the user's profile page
      redirect_to ( user_path(@user) )
    else
      #otherwise, the user has entered in an incorrect combo
      @message = "The email and password combination does not match, try again."
      render(:new)
    end

  end

private

  def load_user
    @user = User.find_by(email: params[:email])
  end

end
