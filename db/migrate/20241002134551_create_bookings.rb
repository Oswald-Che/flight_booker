class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :passenger_amount
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
