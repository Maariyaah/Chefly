class AddEndingToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :ending, :date
  end
end