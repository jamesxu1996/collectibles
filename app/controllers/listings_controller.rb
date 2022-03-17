class ListingsController < ApplicationController
  before_action :authenticate_user!, :current_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # shows all listings, paginates listings into increments of 10
  def index
    @listings = Listing.all
    @listings = Kaminari.paginate_array(@listings).page(params[:page]).per(10)
  end

  # GET /listings/1
  def show
    
  end

  # GET /listings/new
  # Creates a new listing
  def new
    @listing = Listing.new
  end

  # POST /listings
  # Creates a new listing and also saves to the database. Returns a flash alert message indicating if successful or unsuccessful
  def create
    listing = Listing.create(listing_params)
    if listing.save
      redirect_to listings_path(listing), notice: "Listing has been successfully created!"
    else
      current_listing
      render "new", alert: "Listing not created!"
    end
  end

  # GET /listings/1/edit
  def edit
    
  end

  # PATCH /listings/1
  # PUT /listings/1
  # Updates an already created listing and also saves to the database. Returns a flash alert message indicating if successful or unsuccessful
  def update
    @listing.update(listing_params)
    if @listing.save
      redirect_to listings_path(@listing), notice: "Listing has been successfully updated!"
    else
      current_listing
      render "edit", alert: "Listing not updated!"
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy

    redirect_to listings_path, notice: "Listing has been successfully deleted!"
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
