class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @booking = @flight.bookings.build
    @passenger_amount = params[:passenger].to_i
    @passenger_amount.times { @booking.passengers.build(flight_id: @flight.id) }
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  def create
    id = params[:booking][:passengers_attributes]["0"][:flight_id]
    @flight = Flight.find(id)
    @booking = @flight.bookings.create!(booking_params)
    

    redirect_to @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:passenger_amount, passengers_attributes: [:name, :email, :flight_id])
  end
end
