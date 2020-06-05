module UsersHelper
  def created_list(creator)
    content_tag :ul do
      creator.event_creator.map do |line|
        concat(
          content_tag(:li, (link_to line.name, event_path(line.id)))
        )
      end
    end
  end

  def attended_list(gone)
    content_tag :ul do
      gone.map do |line|
        concat(
          content_tag(:li, (link_to line.name, event_path(line.id)))
        )
      end
    end
  end

  def to_go_list(to_go)
    content_tag :ul do
      to_go.map do |line|
        concat(
          content_tag(:li, (link_to line.name, event_path(line.id)))
        )
      end
    end
  end
end
