class Event < ApplicationRecord
  # belongs_to :user, class_name: 'User
  belongs_to :creator, class_name: 'User'
end
