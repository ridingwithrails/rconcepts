class Flickr
  
  def self.search_tags(query=nil)
    query = "happy" if query.blank?
    flickr.photos.search(:text => query, :per_page => 20)
  end

end