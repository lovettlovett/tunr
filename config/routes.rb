TunrApp::Application.routes.draw do
  resources :artists do
    resources :songs
  end

  resources :users

  #resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#delete"

  get "/songs", to:"songs#all_songs"
  post "/songs", to:"songs#all_songs"

  root "welcome#index"
end
