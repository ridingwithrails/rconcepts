class Rconcept 

require 'net/http'
require 'json'

  def self.get_data(query=nil)
    return [] if query.nil? || query == ""
    url = "http://conceptnet5.media.mit.edu/data/concept/en/#{query.parameterize}/?get=word_senses&per_page=3&max_score=1000"
    resp = Net::HTTP.get_response(URI.parse(url)) # get_response takes an URI object
    data =  JSON.parse(resp.body)
    return data["word_senses"]  || []
  end

end