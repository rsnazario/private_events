class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendances, foreign_key: :attended_event_id, class_name: 'Attendance'
  has_many :guests, through: :attendances, source: :attendee

  scope :past, -> { where('event_when > ?', DateTime.now) }
  scope :upcoming, -> { where('event_when > ?', DateTime.now) }
end
