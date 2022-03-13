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
end
