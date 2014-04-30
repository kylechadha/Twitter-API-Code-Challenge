class SearchesController < ApplicationController
  def index
    if params[:increment]
      @display = params[:increment].to_i
    else
      @display = 10
    end

    if params[:search]
      @results = current_user.twitter.search(params[:search], :count => @display, :lang => 'en')
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
