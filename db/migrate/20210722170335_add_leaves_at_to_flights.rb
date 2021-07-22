class AddLeavesAtToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :leaves_at, :time
  end
end
