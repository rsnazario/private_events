module SessionsHelper
  def current_user
    current_user = User.find_by(id: cookies[:current_user_id])
    current_user
  end

  def user_btn_actions
    return unless current_user

    content_tag(:a, (link_to 'Create Event', new_event_path))
    content_tag(:a, (link_to 'Profile', user_path(current_user)))
  end

  def btn_logout
    return unless current_user

    content_tag(:a, (link_to 'LOGOUT', new_session_path, method: :delete))
  end

  def btn_signup
    return if current_user

    content_tag(:a, (link_to 'REGISTER', new_user_path))
    content_tag(:a, (link_to 'LOGIN', new_session_path))
  end
end
