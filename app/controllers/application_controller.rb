class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :set_riders

  private

  def set_riders
    @riders = Rider.all
  end
end

