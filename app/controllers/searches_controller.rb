class SearchesController < ApplicationController
  def index
    @display = 10
    if params[:search]
      @results = current_user.twitter.search(params[:search], :count => @display)
    end
  end
end
