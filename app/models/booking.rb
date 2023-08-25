class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef_offer

  validates_presence_of :starting


end
