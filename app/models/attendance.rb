class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: 'User' # link with invitations
  belongs_to :attended_event, class_name: 'Event' # have guests
end
