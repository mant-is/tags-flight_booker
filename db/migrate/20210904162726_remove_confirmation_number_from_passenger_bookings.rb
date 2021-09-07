class RemoveConfirmationNumberFromPassengerBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :passenger_bookings, :confirmation_number
  end
end
