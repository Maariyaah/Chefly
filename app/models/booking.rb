class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef_offer

  validates :starting, presence: true
end
