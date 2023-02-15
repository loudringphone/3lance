Rails.application.routes.draw do
  resources :users
  resources :offers
  resources :requests
  resources :comments, only: [:create, :index, :show]
  resources :messages, only: [:create, :index, :show]
  post "/login", to: "users#login"
  get '/profile', to: "users#user_profile"
  # get "/offers/:id", to: "offers#show"

end
