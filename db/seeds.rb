# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
airport_code = %w[ATL DEN SFO NYC]
airport_code.each do |code|
  Airport.create(code:)
end

100.times do
  airports = airport_code.sample(2)
  arriving_airport = Airport.find_by(code: airports[0]).id
  departure_airport = Airport.find_by(code: airports[1]).id
  time = rand(4.days.from_now..15.days.from_now)
  duration = rand(1..30)
  Flight.create(departure_airport_id: departure_airport,
                arrival_airport_id: arriving_airport,
                start_time: time, duration: "#{duration} hours")
end
