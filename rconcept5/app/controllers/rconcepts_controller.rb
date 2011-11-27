class RconceptsController < ApplicationController
  
  def index
    @data = []
  end
  
  def create
    @query = params[:query]
    @data = Rconcept.get_data(@query.strip)
    render 'index'
  end
  
  
end
