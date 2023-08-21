class CreateChefOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :chef_offers do |t|
      t.string :name
      t.string :cuisine_category
      t.string :dish_specialty
      t.string :previous_work_experience
      t.float :rating
      t.string :location
      t.float :price_per_hour
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
