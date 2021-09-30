class Room < ApplicationRecord
  has_many :users
  # has_many :messages, dependent: :destroy
  has_many :room_users, dependent: :destroy
  has_one :chart
  validates :name, presence: true
end
