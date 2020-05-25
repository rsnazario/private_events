class SessionsController < ApplicationController
  def new
    cookies[:current_user] = 'nickname123'
  end

  def create
    cookies[:current_user] = 'nickname123'
  end
  
  def destroy

  end
end