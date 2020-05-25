class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to new_user_path
  end

  def show
    @user.find(params[:id])
  end

  private 
  def user_params
    params.require(:user).permit(:username)
  end
end