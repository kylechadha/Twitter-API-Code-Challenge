TwitterExplorer::Application.routes.draw do
  root 'searches#index'
  resources :searches, only: [:index, :show]

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :logout
end
