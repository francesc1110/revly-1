class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to feed_path
    else
      render :new
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    user = User.find(session[:user_id])
    user.destroy
    redirect_to root_path
  end

  def feedback
  end

private

  #security feature to 'white-list' certain params values
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end


end
