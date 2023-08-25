class BookingsController < ApplicationController
  def index
   @bookings = Booking.all
  end

  def create
    @chef_offer = ChefOffer.find(params[:chef_offer_id])
    @booking = Booking.new(bookings_params)
    @booking.chef_offer = @chef_offer
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path, notice: 'Booking saved!'
    else
      render "chef_offers/show", status: :unprocessable_entity
    end

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

  end


private

  def bookings_params
    params.require(:booking).permit(:starting)
  end
end
