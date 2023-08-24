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

  def create
    @chef_offer = ChefOffer.new(chef_offer_params)
    if @chef_offer.save
      redirect_to chef_offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def chef_offer_params
    params.require(:ChefOffer).permit(:name, :cuisine_category, :dish_specialty, :previous_work_experience, :rating, :location, :bio, :price_per_hour, :photo)
  end
end
