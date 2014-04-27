class SearchesController < ApplicationController
  def index
    @results = Search.request("monkeys")
    
  end



  def new
  end
end
