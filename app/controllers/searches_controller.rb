class SearchesController < ApplicationController
  def index
    @display = 10
    if params[:increment]
      @display += params[:increment].to_i
    end

    if params[:search]
      @results = current_user.twitter.search(params[:search], :count => @display)
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
