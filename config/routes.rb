Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :stocks
  resources :orders

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/logged_in', to: 'application#logged_in?'
  post '/auto_login', to: 'auth#auto_login'
  # post '/users', to: 'users#create'
  # get '/stocks', to: 'stocks#index'
  # get '/me', to: 'users#show'
end
