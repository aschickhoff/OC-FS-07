# app/services/flickr_client.rb

class FlickrClient
  def initialize(api_key:)
    FlickRaw.api_key = api_key
  end

  def fetch_photos(tag:, limit:, page:)
    per_page = limit # Number of photos per page
    page_number = page || 1 # Current page number (default: 1)

    flickr.photos.search(tags: tag, per_page: per_page, page: page_number).map do |photo|
      {
        url: FlickRaw.url(photo),
        title: photo.title,
        description: photo.title
      }
    end
  end
end
