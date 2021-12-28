class UserProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar

  validates :address, :gender, :birthdate, presence: true
end
