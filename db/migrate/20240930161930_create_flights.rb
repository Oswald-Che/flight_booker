class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :departure_airport, index: true, null: false, foreign_key: { to_table: :airports }
      t.references :arrival_airport, index: true, null: false, foreign_key: { to_table: :airports }

      t.timestamps
    end
  end
end
