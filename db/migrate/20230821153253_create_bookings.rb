class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :start_date
      t.string :end_date
      t.references :user, null: false, foreign_key: true
      t.references :chef_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
