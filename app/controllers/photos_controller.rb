class PhotosController < ApplicationController
  def photos
    flickr_client = FlickrClient.new(api_key: ENV['FLICKR_API_KEY'])
    photos = flickr_client.fetch_photos(tag: 'BoulderBikeTour, bikerace', page: params[:page])
    @photos = Kaminari.paginate_array(photos).page(params[:page]).per(40)
  end
end