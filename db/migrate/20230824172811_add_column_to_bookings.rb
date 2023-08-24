class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :starting, :date
  end
end
