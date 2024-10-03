class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @booking = @flight.bookings.build
    @passengers = @booking.passengers.build(flight_id: @flight.id)
    @passenger_amount = params[:passenger].to_i
  end

  def create
  end
end
