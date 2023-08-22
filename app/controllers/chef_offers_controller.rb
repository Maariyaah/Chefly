class ChefOffersController < ApplicationController
  def index
    @chef_offers = ChefOffer.all
  end

  def new
    @chef_offer = ChefOffer.new
  end

  def show
    @chef_offer = ChefOffer.find(params[:id])
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
  #   params.require(:ChefOffer).permit(:name, :cuisine_category, :dish_specialty, :previous_work_experience, :rating, :location, :price_per_hour)
  # end
end
