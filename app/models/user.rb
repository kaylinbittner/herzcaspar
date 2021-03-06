class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_interests
  has_many :posts
  has_many :interests, through: :user_interests
  has_many :user_events
  has_many :events, through: :user_events
  has_many :events

end
