Rails.application.routes.draw do
  get 'pages/home'
  post '/auth/login', to: 'authentication#login'
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :offers
  resources :users, only: [:create, :show, :index] do 
    resources :items, only: [:create, :show, :index, :destroy]
 end
end
