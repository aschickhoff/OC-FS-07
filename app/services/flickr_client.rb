# app/services/flickr_client.rb

class FlickrClient
  def initialize(api_key:)
    FlickRaw.api_key = api_key
  end

  def fetch_photos(tag:, limit:)
    flickr.photos.search(tags: tag, per_page: limit).map do |photo|
      {
        url: FlickRaw.url(photo),
        title: photo.title,
        description: photo.title
      }
    end
  end
end
