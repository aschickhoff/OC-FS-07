require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  include Pagy::Backend
  
  def setup
    @flickr_client = FlickrClient.new(api_key: ENV['FLICKR_API_KEY'])
  end

  test "should get index" do
    get photos_url
    assert_response :success
  end

  test "should fetch photos" do
    all_photos = @flickr_client.fetch_photos(tag: 'BoulderBikeTour, bikerace')
    assert_not_nil all_photos
  end
end
