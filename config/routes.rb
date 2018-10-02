Rails.application.routes.draw do
  get '/loadraces', action: :load_races, controller: 'races'
  get '/loadriders', action: :load_riders, controller: 'riders'

  resources :users, only: [:create, :index, :show, :update, :destroy]
  resources :user_events, only: [:create, :index, :show, :update]
  resources :comments, only: [:create]
  post '/login', to: 'auth#login'
  get '/profile', to: 'users#show'
  resources :races, :riders, :events
  delete '/delete_event', to: 'user_events#destroy'

end
