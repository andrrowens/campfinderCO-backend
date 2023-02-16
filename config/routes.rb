Rails.application.routes.draw do
  resources :campsites, only: [:index, :show, :create]
  resources :users, only: [:show]
  resources :reviews

  get '/authenticated_user', to: 'users#show'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'




end
