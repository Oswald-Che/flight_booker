class AddColumnsToFlight < ActiveRecord::Migration[7.1]
  def change
    add_column :flights, :start_time, :datetime
    add_column :flights, :duration, :string
  end
end
