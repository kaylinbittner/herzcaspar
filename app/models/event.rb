class Event < ApplicationRecord
  has_many :users, through: :user_event
  belongs_to :coordinator, :class_name => 'User'
end
