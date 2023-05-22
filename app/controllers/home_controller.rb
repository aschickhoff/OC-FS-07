class HomeController < ApplicationController
  def index
    @riders = Rider.all
  end
end
