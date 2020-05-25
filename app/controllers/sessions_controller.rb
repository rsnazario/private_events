class SessionsController < ApplicationController
  def new
  end

  def create
    if x = User.find_by(username: params[:usuario_entrando])
      cookies[:current_user] = x.id
    else
      puts 'aiosjas'
    end
    # users/1
    redirect_to user_path(x.id)
  end

  def destroy
    cookies.delete(:current_user)
  end
end