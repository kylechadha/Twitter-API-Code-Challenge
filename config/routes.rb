TwitterExplorer::Application.routes.draw do
  root 'searches#index'

  resources :searches, only: [:index, :create]
  post "searches/create" => "searches#create", as: "favorite"

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :logout
end
