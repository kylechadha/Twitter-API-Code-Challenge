TwitterExplorer::Application.routes.draw do
  root 'searches#index'
  
  get "searches/new"

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :logout
end
