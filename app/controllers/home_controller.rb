class HomeController < ApplicationController
  def index
    flickr_client = FlickrClient.new(api_key: ENV['FLICKR_API_KEY'])
    @photos = flickr_client.fetch_photos(tag: 'BoulderBikeTour', limit: 40)
  end
end
