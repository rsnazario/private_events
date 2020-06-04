module EventsHelper
  def upcoming_events_list(events)
    content_tag :ul do
      events.upcoming.map do |line| concat(
        content_tag(:li, (link_to line.name, event_path(line.id)))
      )
      end
    end
  end
end
