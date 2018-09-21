Rails.application.routes.draw do
  get '/loadraces', action: :load_races, controller: 'races'

  resources :users, :races
end
