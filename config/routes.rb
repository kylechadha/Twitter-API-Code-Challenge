TwitterExplorer::Application.routes.draw do
  get "searches/index"
  get "searches/new"
  root 'welcome#index'
  get "welcome/index"

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :logout
end
