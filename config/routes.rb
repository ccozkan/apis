Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get '/antennas/city'
  get '/antennas/band'
  get '/antennas/city_band'
  resources :antennas, only: [:index, :show]

  get '/beverages/name'
  get '/beverages/category'
  resources :beverages, only: [:index, :show]

  resources :radio_stations, only: [:index, :show]
end
