class Event < ApplicationRecord
  has_many :users, through: :user_event
  belongs_to :coordinator, :class_name => 'User'
  # accepts_nested_attributes_for :user_events
end
