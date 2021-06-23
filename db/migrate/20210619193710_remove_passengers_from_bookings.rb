class RemovePassengersFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :passengers, :integer
  end
end
