class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_event
  belongs_to :coordinator, class_name: 'User'
  accepts_nested_attributes_for :user_events
  attr_accessor :participants
end
