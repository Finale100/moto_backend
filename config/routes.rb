Rails.application.routes.draw do
  get '/loadraces', action: :load_races, controller: 'races'
  get '/loadriders', action: :load_riders, controller: 'riders'

  resources :users, :races, :riders, :events, :user_events
end
