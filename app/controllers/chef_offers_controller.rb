class ChefOffersController < ApplicationController
  def index
    @chef_offers = ChefOffer.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR cuisine_category ILIKE :query"
      @chef_offers = @chef_offers.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @chef_offer = ChefOffer.new
  end

  def show
    @chef_offer = ChefOffer.find(params[:id])
    @booking = Booking.new


    @markers = [
      {
        lat: @chef_offer.latitude,
        lng: @chef_offer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {offer: @chef_offer}),
        marker_html: render_to_string(partial: "marker", locals: {offer: @chef_offer})
      }
    ]
  end

  # def create
  #   @chef_offer = ChefOffer.new(chef_offer_params)
  #   if @chef_offer.save
  #     redirect_to chef_offer_path(@chef_offer)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def chef_offer_params
  #   params.require(:ChefOffer).permit(:name, :cuisine_category, :dish_specialty, :previous_work_experience, :rating, :location, :bio, :price_per_hour)
  # end
end
