class ListingsController < ApplicationController
  before_action :authenticate_user!, :current_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show
    
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.create(listing_params)

    redirect_to listings_path(listing)
  end

  def edit
    
  end

  def update
    @listing.update(listing_params)

    redirect_to listing_path(@listing)
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  #whitelisting parameters 
  def listing_params
    params.require(:listing).permit(:name, :price, :description, :quantity, :category)
  end

  #set listing search to avoid multiple search calls for controller actions
  def current_listing
    @listing = Listing.find(params[:id])
  end
end
