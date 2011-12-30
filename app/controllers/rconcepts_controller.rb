class RconceptsController < ApplicationController
  
  def index
    @data = []
    @photos = Flickr.search_tags(nil)
  end
  
  def create
    query = params[:query]
    @data = Rconcept.get_data(query.strip.parameterize)
    @photos = Flickr.search_tags(query)
    render 'index'
  end
  
  
end
