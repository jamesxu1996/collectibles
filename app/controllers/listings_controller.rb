class ListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
