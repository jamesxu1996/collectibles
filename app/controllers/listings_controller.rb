class ListingsController < ApplicationController
  before_action :authenticate_user!, 

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.create(listing_params)

    redirect_to listings_path(listing)
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)

    redirect_to listing_path(@listing)
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    redirect_to listings_path
  end

  private

  #whitelisting parameters 
  def listing_params
    params.require(:listing).permit(:name, :price, :description, :quantity, :category)
end
