# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = File.read('db/json_files/ANTENNAS.json')
data = JSON.parse(file)

data.length.times do |d|

  if data[d.to_s]['city'].include?('/')
    location_fix = data[d.to_s]['city'].split('/')[1] + ' ' + data[d.to_s]['location']
    city_fix = data[d.to_s]['city'].split('/')[0]
  else
    location_fix = data[d.to_s]['location']
    city_fix = data[d.to_s]['city']
  end

  Antenna.create({
                   city: city_fix,
                   band: data[d.to_s]['band'],
                   location: location_fix,
                   frequency: data[d.to_s]['frequency'],
                   tone: data[d.to_s]['tone'],
                   sql: data[d.to_s]['sql'],
                   status: data[d.to_s]['status'],
                   date_updated: data[d.to_s]['date_updated']
                 })
end

file = File.read('db/json_files/BEVERAGES.json')
data = JSON.parse(file)

data.length.times do |d|

  Beverage.create({
                    name: data[d]['name'].upcase,
                    glass: data[d]['glass'],
                    category: data[d]['category'],
                    garnish: data[d]['garnish'],
                    preparation: data[d]['preparation'],
                    ingredients: data[d]['ingredients']
                  })
end

file = File.read('db/json_files/RADIO_STATIONS.json')
data = JSON.parse(file)

data.length.times do |d|

  RadioStation.create({
                    name: data[d]['name'].upcase,
                    url: data[d]['url'],
                    genre: data[d]['genre'],
                    country: data[d]['country']
                  })
end

file = File.read('db/json_files/QUOTES.json')
data = JSON.parse(file)

data.length.times do |d|

  if data[d]['text'].length > 0
    Quote.create({
                         author: data[d]['author'],
                         text: data[d]['text']
                      })
  end
end
