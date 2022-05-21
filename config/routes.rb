Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/valuables', to: 'valuables#index'
  get '/valuables/verify/:id', to: 'valuables#verify_disponibility'
  put '/basket', to: 'basket#save_basket'

  post '/login', to: 'login#authenticate_user'
  post '/logout', to: 'logout#terminate_session'
  get '/signup', to: 'signup#new'
  post '/signup', to: 'signup#create'
  put '/signup', to: 'signup#update'
  delete '/signup', to: 'signup#delete'

  post '/authenticate', to: 'authentication#validate_jwt_token'
  
  get '/checkout', to: 'checkout#finish'
  post '/upload', to: 'valuables#create'
end
