class Match < ApplicationRecord
  belongs_to :buddy, :class_name => 'User'
  belongs_to :coordinator, :class_name => 'User'
  belongs_to :patient, :class_name => 'User'
  # attr_accessor :buddy
  # attr_accessor :patient
end
