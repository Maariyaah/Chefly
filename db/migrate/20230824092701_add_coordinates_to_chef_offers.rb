class AddCoordinatesToChefOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :chef_offers, :latitude, :float
    add_column :chef_offers, :longitude, :float
  end
end
