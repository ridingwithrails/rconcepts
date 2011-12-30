class Flickr
  
  def self.search_tags(query=nil)
    query = "dark" if query.blank?
    flickr.photos.search(:text => query, :per_page => 5)
  end

end