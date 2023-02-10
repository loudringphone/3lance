Rails.application.routes.draw do
  
  get 'pages/home'
  resources :users
  post '/auth/login', to: 'authentication#login'
  
end
