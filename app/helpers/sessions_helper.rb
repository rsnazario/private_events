module SessionsHelper
  def current_user
    current_user = User.find_by(id: cookies[:current_user_id])
    return current_user
  end
end
