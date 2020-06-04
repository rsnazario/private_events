module ApplicationHelper
  def user_buttons
    return unless current_user

    content_tag(:a, (link_to 'Create Event', new_event_path))
    content_tag(:a, (link_to 'Profile', user_path(current_user)))
  end
end
