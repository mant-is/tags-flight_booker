class AddConfirmationNumberToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :confirmation_number, :string
  end
end
