module EventsHelper
  def upcoming_events_list(events)
    content_tag :ul do
      events.upcoming.map do |line|
        concat(
          content_tag(:li, (link_to line.name, event_path(line.id)))
        )
      end
    end
  end

  def previous_events_list(events)
    content_tag :ul do
      events.past.map do |line|
        concat(
          content_tag(:li, (link_to line.name, event_path(line.id)))
        )
      end
    end
  end

  def guest_list(event)
    content_tag :ul do
      event.guests.map do |line|
        concat(
          content_tag(:li, line.username)
        )
      end
    end
  end
end
