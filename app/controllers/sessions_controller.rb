class SessionsController < ApplicationController
  def new
  end

  def create
    if x = User.find_by(username: params[:usuario_entrando])
      cookies[:current_user] = x.username
    end
    redirect_to root_path
  end

  def destroy
    cookies.delete(:current_user)
  end
end