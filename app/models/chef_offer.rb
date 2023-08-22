class ChefOffer < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :users, through: :bookings
  validates :name, :cuisine_category, :dish_specialty, :previous_work_experience, :rating, :location, :price_per_hour,
            presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: true
  validates :rating, numericality: { in: 0..5 }
  validates :price_per_hour, numericality: true
end
