TwitterExplorer::Application.routes.draw do
  root 'welcome#index'
  get "welcome/index"

  match "/auth/twitter/callback" => "sessions#create", via: [:get, :post]
end
