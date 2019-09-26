class Antenna < ApplicationRecord

  #scope :APRS, -> {Antenna.where("band = 'APRS'")}

  scope :band_type, -> (band) {Antenna.where(band: band)}
  scope :city_name, -> (city) {Antenna.where(city: city)}
  scope :city_and_band, -> (city,band) {Antenna.where(city: city, band: band)}

end
