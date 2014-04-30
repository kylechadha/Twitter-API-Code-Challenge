class SearchesController < ApplicationController
  def index
    if params[:increment]
      @display = params[:increment].to_i
    else
      @display = 10
    end

    # If authenticated, use user auth to search, otherwise use application auth 
    if params[:search] and current_user
      @results = current_user.twitter.search(params[:search], :count => @display, :lang => 'en')
    elsif params[:search]
      @results = application.search(params[:search], :count => @display, :lang => 'en')
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
