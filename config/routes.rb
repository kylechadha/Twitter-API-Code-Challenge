TwitterExplorer::Application.routes.draw do
  root 'welcome#index'
  get "welcome/index"

  match "/auth/twitter/callback" => "welcome#index", via: [:get, :post]
end
