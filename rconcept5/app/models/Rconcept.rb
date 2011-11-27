class Rconcept 

require 'net/http'
require 'json'

def self.get_data(query=nil)
  return [] if query.nil?

  url = "http://conceptnet5.media.mit.edu/data/concept/en/#{query}/?get=word_senses&per_page=3&max_score=1000"
  resp = Net::HTTP.get_response(URI.parse(url)) # get_response takes an URI object
  data =  JSON.parse(resp.body)
  data["word_senses"].reject{|r| r["score"].nil?}
end

end