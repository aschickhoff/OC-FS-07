class PhotosController < ApplicationController
  include Pagy::Backend

  def index
    flickr_client = FlickrClient.new(api_key: ENV['FLICKR_API_KEY'])
    all_photos = flickr_client.fetch_photos(tag: 'BoulderBikeTour, bikerace',)
    @pagy, @photos = pagy_array(all_photos, page: params[:page])
  end
end
