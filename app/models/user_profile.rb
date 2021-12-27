class UserProfile < ApplicationRecord
  belongs_to :user

  validates :address, :gender, :birthdate, presence: true
end
