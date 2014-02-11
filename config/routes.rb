TunrApp::Application.routes.draw do
  resources :artists do
    resources :songs
  end

  resources :users

  get "/", to: "welcome#index"

  get "/songs", to:"songs#all_songs"
  post "/songs", to:"songs#all_songs"
end
