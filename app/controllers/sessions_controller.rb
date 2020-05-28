class SessionsController < ApplicationController
  def new; end

  def create
    if userx = User.find_by(username: params[:username_in])
      cookies[:current_user_id] = userx.id
      redirect_to user_path(cookies[:current_user_id])
    end
  end

  def destroy
    cookies.delete(:current_user)
  end
end