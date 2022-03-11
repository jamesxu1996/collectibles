class CollectiblesController < ApplicationController
  before_action :authenticate_user!, only: [:restricted]

  def index
  end

  def home
  end

  def restricted
  end

  def new
  end

  def edit
  end



end
