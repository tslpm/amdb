Amdb::Application.routes.draw do
  root :to => 'Movies#index'

  resources :roles
  resources :actors
  resources :movies
  resources :directors
end
