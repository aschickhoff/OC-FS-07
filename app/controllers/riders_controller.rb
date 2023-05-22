class RidersController < ApplicationController
  def riders
    @riders = Rider.all
  end
end