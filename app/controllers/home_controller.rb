class HomeController < ApplicationController
  #before_action :authenticate_user!, only: [:restricted]

  def index
  end

  def restricted
  end

end
