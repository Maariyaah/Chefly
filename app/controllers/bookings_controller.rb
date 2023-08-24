class BookingsController < ApplicationController
  def new
    @bookings = Booking.all
    @booking = Booking.new
    @booking = Booking.find(params[user_id])
    @chef_offer = ChefOffer.new
    @chef_offer = ChefOffer.find(params[:id])
  end
end
