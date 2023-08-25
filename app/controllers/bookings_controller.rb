class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @chef_offer = ChefOffer.find(params["chef_offer_id"])
  end
end
 
