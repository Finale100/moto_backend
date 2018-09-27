Rails.application.routes.draw do
  get '/loadraces', action: :load_races, controller: 'races'
  get '/loadriders', action: :load_riders, controller: 'riders'

  resources :users, only: [:create, :index, :show, :update, :destroy]
  post '/login', to: 'auth#login'
  get '/profile', to: 'users#show'
  resources :races, :riders, :events, :user_events
end
