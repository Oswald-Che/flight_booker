# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
%w[ATL DEN SFO NYC LAX IST JFK AMS MAD YYZ].each do |code|
  Airport.create(code:)
end

def num(number)
  number + 60
end

Flight.create(departure_airport_id: num(1), arrival_airport_id: num(4), start_time: DateTime.parse("01/10/2024 08:00"), duration: "5 hours")
Flight.create(departure_airport_id: num(2), arrival_airport_id: num(4), start_time: DateTime.parse("02/10/2024 10:00"), duration: "3 hours")
Flight.create(departure_airport_id: num(4), arrival_airport_id: num(9), start_time: DateTime.parse("04/10/2024 18:50"), duration: "21 hours")
Flight.create(departure_airport_id: num(5), arrival_airport_id: num(7), start_time: DateTime.parse("10/10/2024 01:00"), duration: "6 hours")
Flight.create(departure_airport_id: num(3), arrival_airport_id: num(10), start_time: DateTime.parse("06/11/2024 04:30"), duration: "9 hours")
Flight.create(departure_airport_id: num(4), arrival_airport_id: num(8), start_time: DateTime.parse("11/10/2024 15:00"), duration: "29 hours")
Flight.create(departure_airport_id: num(5), arrival_airport_id: num(3), start_time: DateTime.parse("08/10/2024 17:00"), duration: "7 hours")
Flight.create(departure_airport_id: num(8), arrival_airport_id: num(9), start_time: DateTime.parse("12/10/2024 04:40"), duration: "8 hours")
Flight.create(departure_airport_id: num(10), arrival_airport_id: num(2), start_time: DateTime.parse("01/11/2024 06:13"), duration: "4 hours")
Flight.create(departure_airport_id: num(1), arrival_airport_id: num(6), start_time: DateTime.parse("21/10/2024 08:00"), duration: "22 hours")
