module SessionsHelper
  def current_user
    current_user = User.find_by(id: cookies[:current_user_id])
    current_user
  end

  def user_buttons
    return unless current_user

    content_tag(:a, (link_to 'Create Event', new_event_path))
    content_tag(:a, (link_to 'Profile', user_path(current_user)))
  end
end
