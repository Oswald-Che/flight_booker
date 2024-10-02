class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def start_time_formatted
    start_time.strftime("%d/%m/%Y")
  end
end
