Rails.application.routes.draw do
  resources :users
  resources :offers
  resources :requests
  post "/login", to: "users#login"
  get '/profile', to: "users#user_profile"
  # get "/offers/:id", to: "offers#show"

end
