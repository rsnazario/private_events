class User < ApplicationRecord
  # has_many :event_creator, class_name: 'Event', foreign_key: 'creator_id'
  has_many :events_to_go, foreign_key: :attendee_id, class_name: 'Attendance'
end
