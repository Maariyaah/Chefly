class AddAddressToChefOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :chef_offers, :address, :string
  end
end
