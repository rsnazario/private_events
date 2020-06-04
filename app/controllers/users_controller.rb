class UsersController < ApplicationController
  def show
    @show_user = User.find(params[:id])
    @upcoming_events = @show_user.attended_events.future
    @previous_events = @show_user.attended_events.previous
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to new_session_path if @user.save
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
