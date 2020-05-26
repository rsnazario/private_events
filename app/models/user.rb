class User < ApplicationRecord
  has_many :parties, class_name: 'Event'
end


# show all evemts
