class ListingsController < ApplicationController
  #set before actions
  before_action :authenticate_user!, except: [:index, :show]
  before_action :current_listing, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  before_action :set_form_vars, only: [:new, :edit]


  # GET /listings
  # shows all listings, paginates listings into increments of 5
  # sets up ransack gem; allows for search filtering of descriptions
  def index
    @q = Listing.ransack(params[:q])
    @listings = @q.result(distinct: true)
    @listings = Kaminari.paginate_array(@listings).page(params[:page]).per(5)
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
    @listing = current_user.listings.new(listing_params)
    if @listing.save
      redirect_to @listing, notice: "Listing has been successfully created!"
    else
      set_form_vars
      render "new", alert: "Listing not created. Please enter all fields"
    end
  end

  # PATCH /listings/1
  # PUT /listings/1
  # Updates an already created listing and also saves to the database. Returns a flash alert message indicating if successful or unsuccessful
  def update
    @listing.update(listing_params)
    if @listing.save
      redirect_to @listing, notice: "Listing has been successfully updated!"
    else
      set_form_vars
      render "edit", alert: "Listing not updated. Please enter all fields."
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy

    redirect_to listings_path, notice: "Listing has been successfully deleted!"
  end

  # fetches orders when buyer_id == current_user, eager loads listings by name
  def purchases
    @list_purchases = Order.where(buyer_id: current_user.id).order("listings.name").eager_load(:listing)
  end

  private

  #whitelisting parameters 
  def listing_params
    params.require(:listing).permit(:name, :price, :category_id, :description, :condition, :picture, feature_ids: [])
  end

  #set listing search callback to avoid multiple search calls for controller actions
  def current_listing
    @listing = Listing.find(params[:id])
  end

  def authorize_user
    if @listing.user_id != current_user.id
      redirect_to listings_path, alert: "You do not have permission without logging in"
    end
  end

  #set form variables to avoid multiple search calls
  def set_form_vars
    @categories = Category.all
    @features = Feature.all
    @conditions = Listing.conditions.keys
  end
end
