class UsersController < ApplicationController
  def show
    @show_user = User.find(params[:id])

    @upcoming_events = @show_user.attended_events if @show_user.attended_events.when < DateTime.now
    @upcoming_events = current_user.upcoming_events 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to new_session_path
  end

  private 
  def user_params
    params.require(:user).permit(:username)
  end
end