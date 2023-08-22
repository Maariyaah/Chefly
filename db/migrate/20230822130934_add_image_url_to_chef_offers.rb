class AddImageUrlToChefOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :chef_offers, :image_url, :string
  end
end
