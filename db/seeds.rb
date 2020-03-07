# coding: utf-8
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

file = File.read('db/json_files/turkishstations.json')
#file = File.read('db/json_files/RADIO_STATIONS.json')
data = JSON.parse(file)

data.length.times do |d|
  RadioStation.create({

                    name: data[d]['name'].upcase.gsub('Ç','C').gsub('Ğ','G').gsub('İ','I').gsub('Ö','O').gsub('Ş','S').gsub('Ü','U').gsub('-','').gsub('1','').gsub('2','').gsub('3','').gsub('4','').gsub('5','').gsub('6','').gsub('7','').gsub('8','').gsub('9','').gsub('0','').gsub('.',''),
                    url: data[d]['url']
                  })
end


file = File.read('db/json_files/QUESTIONS.json')
trivia = JSON.parse(file)

trivia.length.times do |d|
  Trivium.create({
    question: trivia[d]["question"],
    options: trivia[d]["options"],
    answer: trivia[d]["answer"],
    media: trivia[d]["media"]
  })
end


file = File.read('db/json_files/DATA.json')
data_stations = JSON.parse(file)

data_stations.length.times do |d|
  Station.create({
                   lat: data_stations[d]['lat'],
                   lon: data_stations[d]['lon'],
                   name: data_stations[d]['name']
                 })
                   data_stations[d]['pois'].length.times do |p|
                     StationPoi.create({
                                        lat: data_stations[d]['pois'][p]['lat'],
                                        lon: data_stations[d]['pois'][p]['lon'],
                                        title: data_stations[d]['pois'][p]['title'],
                                        station_id: d,
                                        page_id: data_stations[d]['pois'][p]['pageid'],
                                        dist: data_stations[d]['pois'][p]['dist'],
                                        url: data_stations[d]['pois'][p]['url'],
                                        tag: data_stations[d]['pois'][p]['tag'],
                                        summary: data_stations[d]['pois'][p]['summary']
                 })
                   end
end

