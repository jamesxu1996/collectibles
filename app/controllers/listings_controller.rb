class ListingsController < ApplicationController
  before_action :authenticate_user!, :current_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  def index
    @listings = Listing.all
    @listings = Kaminari.paginate_array(@listings).page(params[:page]).per(10)
  end

  # GET /listings/1
  def show
    
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # POST /listings
  def create
    listing = Listing.create(listing_params)
    if listing.save
      flash[:success] = "Listing has been successfully created!"
      redirect_to listings_path(listing)
    else
      flash[:alert] = "Listing not created!"
    end
  end

  # GET /listings/1/edit
  def edit
    
  end

  # PATCH /listings/1
  # PUT /listings/1
  def update
    @listing.update(listing_params)
    if @listing.save
      flash_class[:success] = "Listing has been successfully updated!"
      redirect_to listings_path(@listing)
    else
      flash[:alert] = "Listing not updated!"
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  #whitelisting parameters 
  def listing_params
    params.require(:listing).permit(:name, :price, :description, :quantity, :category)
  end

  #set listing search callback to avoid multiple search calls for controller actions
  def current_listing
    @listing = Listing.find(params[:id])
  end

  #authorising

end
