class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User' # creator of event
  
  has_many :attendances, foreign_key: :attended_event_id, class_name: 'Attendance' # guests will come
  has_many :guests, through: :attendances, source: :attendee

  scope :past, -> { where('event_when > ?', DateTime.now) }
end
