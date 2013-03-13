Amdb::Application.routes.draw do
  root :to => 'Movies#index'


  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create'

  get '/sessions/new' => 'Sessions#new'
  post '/sessions' => 'Sessions#create'
  delete '/sessions' => 'Sessions#destroy'

  resources :votes
  resources :users
  resources :roles
  resources :actors
  resources :movies
  resources :directors do
    resources :movies
  end


end
