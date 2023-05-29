class RidersController < ApplicationController

  def index
    @riders = Rider.all
  end

  def show
    @rider = Rider.find(params[:id])
    @riders = Rider.all
  end
end