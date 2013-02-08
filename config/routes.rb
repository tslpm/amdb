Amdb::Application.routes.draw do
  resources :votes


  resources :users


  root :to => 'Movies#index'

  resources :roles
  resources :actors
  resources :movies
  resources :directors
end
