class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @booking.chef_offer = ChefOffer.find(params["chef_offer_id"])
  end

  def create

    @booking = Booking.new(bookings_params)

    # @booking.current_user = @booking
    # raise

    #   if @booking.save
    #     redirect_to profile_path
    #   else
    #     render :new, status: :unprocessable_entity
    #   end
  end

  def bookings_params
    params.require(:Booking).permit(:starting)
  end
end
