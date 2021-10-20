Rails.application.routes.draw do
  resources :stocks
  resources :orders
  resources :users
  # resources :users, only: [:create]
  # resources :users, [:create] , need at least create for auth..

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
end


# Rails.application.routes.draw do
#   namespace :api do
#     namespace :v1 do
#       resources :users, only: [:create]
#       post '/login', to: 'auth#create'
#       get '/profile', to: 'users#profile'
#     end
#   end
# end