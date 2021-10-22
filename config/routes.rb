Rails.application.routes.draw do
  # resources :stocks
  resources :orders
  resources :users, only: [:create]

  # post '/users', to: 'users#create'
  post '/login', to: 'auth#create'
  post "/auto_login", to: "auth#auto_login"
  get '/logged_in', to: 'application#logged_in?'
  get '/stocks', to: 'stocks#index'
  

  # get '/profile', to: 'users#profile'
  # get '/me', to: 'users#show'
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