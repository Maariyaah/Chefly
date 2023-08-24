class ChefOffer < ApplicationRecord
  has_one_attached :photo
  belongs_to :user, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, :cuisine_category, :dish_specialty, :previous_work_experience, :rating, :location, :bio, :price_per_hour,
            presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: true
  validates :rating, numericality: { in: 0..5 }
  validates :price_per_hour, numericality: true
  # validates :bio, length: { minimum: 20, maximum: 200 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
