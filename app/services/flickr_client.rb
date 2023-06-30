class FlickrClient
  def initialize(api_key:)
    FlickRaw.api_key = api_key
  end

  def fetch_photos(tag:, page: 1)
    page_number = page || 1

    flickr.photos.search(tags: tag, page: page_number).map do |photo|
      {
        url: FlickRaw.url(photo),
        title: photo.title,
        description: photo.title
      }
    end
  end
end

