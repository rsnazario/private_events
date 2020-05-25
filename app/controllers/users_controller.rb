class UsersController < ApplicationController
  def new
    @user = User.new
    cookies[:current_user] = 'nickname123'
  end

  def create
    @user = User.new(user_params)
    @user.save
    cookies.delete(:current_user)
  end

  def show
    @user.find(params[:id])
  end

  private 
  def user_params
    params.require(:user).permit(:username)
  end
end