Rails.application.routes.draw do
  resources :users
  # resources :users, [:create] , need at least create for auth..

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
