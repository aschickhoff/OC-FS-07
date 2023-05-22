class PhotosController < ApplicationController
  def photos
    flickr_client = FlickrClient.new(api_key: ENV['FLICKR_API_KEY'])
    @photos = flickr_client.fetch_photos(tag: 'BoulderBikeTour, bikerace', limit: 40)
  end
end