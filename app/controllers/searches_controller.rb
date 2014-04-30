class SearchesController < ApplicationController
  def index
    @display = 10
    if params[:increment]
      @display += params[:increment].to_i
      # binding.pry
    end

    if params[:search]
      @results = current_user.twitter.search(params[:search], :count => @display)
    end
    # binding.pry

    respond_to do |format|
      format.html
      format.js
    end
  end
end
