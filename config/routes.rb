Rails.application.routes.draw do
  resources :users
  resources :offers
  resources :requests
  post "/login", to: "users#login"
  get '/profile', to: "users#user_profile"

  # get 'pages/home'
  # post '/login', to: 'authentication#login'
  
  # post "/login", to: "users#login"
  
  # post "/signup", to: "users#create"
  # post "/login", to: "session#create"
  # get "/authorized", to: "session#show"
  # get "/dashboard", to: "users#show" 
end
