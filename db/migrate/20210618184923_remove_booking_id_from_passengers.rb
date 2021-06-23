class RemoveBookingIdFromPassengers < ActiveRecord::Migration[6.1]
  def change
    remove_column :passengers, :booking_id
  end
end
