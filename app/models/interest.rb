class Interest < ApplicationRecord
  belongs_to :user_interest
  has_many :users, through: :user_interest
end
