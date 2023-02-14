Rails.application.routes.draw do
  resources :campsites 
  resources :users
  resources :reviews

  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'




end
