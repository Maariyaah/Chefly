class RemoveStartDateFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :start_date, :string
  end
end
