class SearchesController < ApplicationController
  def index
    @results = Search.request(params[:search])
  end

  def new
  end
end
