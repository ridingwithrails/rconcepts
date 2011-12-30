class Flickr
  
  def self.search_tags(query=nil)
    flickr.photos.search(:tags => query || "dark")
  end

end