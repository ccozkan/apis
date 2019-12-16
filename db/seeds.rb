# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = File.read('db/ta.json')
data_hash = JSON.parse(file)

data_hash.length.times do |d|

  if data_hash[d.to_s]['city'].include?('/')
    location_fix = data_hash[d.to_s]['city'].split('/')[1] + ' ' + data_hash[d.to_s]['location']
    city_fix = data_hash[d.to_s]['city'].split('/')[0]
  else
    location_fix = data_hash[d.to_s]['location']
    city_fix = data_hash[d.to_s]['city']
  end

  Antenna.create({
                   city: city_fix,
                   band: data_hash[d.to_s]['band'],
                   location: location_fix,
                   frequency: data_hash[d.to_s]['frequency'],
                   tone: data_hash[d.to_s]['tone'],
                   sql: data_hash[d.to_s]['sql'],
                   status: data_hash[d.to_s]['status'],
                   date_updated: data_hash[d.to_s]['date_updated']
                 })
end

file = File.read('db/recipes_fixed.json')
data_hash = JSON.parse(file)

data_hash.length.times do |d|

  Beverage.create({
                    name: data_hash[d]['name'].downcase,
                    glass: data_hash[d]['glass'],
                    category: data_hash[d]['category'].downcase,
                    garnish: data_hash[d]['garnish'],
                    preparation: data_hash[d]['preparation'],
                    ingredients: data_hash[d]['ingredients']
                  })
end

file = File.read('db/radio_stations.json')
data_hash = JSON.parse(file)

data_hash.length.times do |d|

  RadioStation.create({
                    name: data_hash[d]['name'].downcase,
                    url: data_hash[d]['url'],
                    genre: data_hash[d]['genre'].downcase,
                    country: data_hash[d]['country'].downcase
                  })
end
