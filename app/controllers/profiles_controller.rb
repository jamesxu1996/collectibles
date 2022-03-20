class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
  end

  def edit
  end

  # fetches orders when buyer_id == current_user, eager loads listings by name
  def purchases
    @list_purchases = Order.where(buyer_id: current_user.id).order("listings.name").eager_load(:listing)
  end
  
end
