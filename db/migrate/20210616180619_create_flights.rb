class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :to_airport_id
      t.integer :from_airport_id
      t.datetime :start
      t.integer :duration

      t.timestamps
    end
  end
end
