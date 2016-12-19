Rails.application.routes.draw do
  root to: 'users#index'

  get '/' => 'users#index'
  get '/signup' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'

end
