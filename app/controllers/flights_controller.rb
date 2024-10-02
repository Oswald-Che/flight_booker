class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id] }
    @passengers = (1..4).map { |i| [i, i] }
    @flight_dates = Flight.all.map(&:start_time_formatted).uniq

    if params[:departure_airport].present?
      @selected_flights = Flight.where(departure_airport_id: params[:departure_airport], arrival_airport: params[:arrival_airport])
    end
  end
end
