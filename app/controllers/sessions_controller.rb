class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]

    # binding.pry ## Can use pry here to make sure our 'auth' variable looks good
    user = User.find_or_create_by(provider: auth["provider"], uid: auth["uid"], name: auth["info"]["name"], access_token: auth["credentials"]["token"], access_token_secret: auth["credentials"]["secret"])

    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
