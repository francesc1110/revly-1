class UsersController < ApplicationController

before_action :load_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render(:show)
    else
      render(:new)
    end

  def show
  end

  def update
  end

  def destroy
  end

  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def load_user
    @user = User.find(params[:id])
  end

end
