class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @garden = Garden.find(params[:id])
    @booking = Booking.new
  end



  def create
    booking = Booking.new(booking_params)
    garden = Garden.find(params[:id])
    booking.garden = garden
    booking.save

    # if booking.save // else redirect_to 'bookings/new'_path(:booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
