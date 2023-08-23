class AddBioToChefOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :chef_offers, :bio, :string
  end
end
