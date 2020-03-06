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
  get '/beverages/search'
  resources :beverages, only: [:index, :show]

  get 'radio_stations/random'
  get 'radio_stations/search'
  get 'radio_stations/name'
  get 'radio_stations/genre'
  get 'radio_stations/country'
  resources :radio_stations, only: [:index, :show]

  get 'quotes/random'
  get 'trivia/random'


#  resources :stations, only: [:index, :show]
  get 'station_pois/near'
#  get 'stations/near'
  resources :station_pois, only: [:index, :show]
end
