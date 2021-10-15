Rails.application.routes.draw do
  resources :stocks
  resources :orders
  resources :portfolios
  resources :users
  # resources :users, [:create] , need at least create for auth..

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
