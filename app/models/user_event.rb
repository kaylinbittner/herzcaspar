class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event


  def attendance_color
    case attendance
    when true then 'green'
    when false then '#A31636'
    else
      '#7BBBE3'
    end
  end
end

