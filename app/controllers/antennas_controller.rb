# coding: utf-8

# :nodoc:
class AntennasController < ApplicationController
  def index
    antenna = Antenna.all
    render json: { status: 1, data: antenna }
  end

  def show
    antenna = Antenna.find(params[:id])
    render json: { status: 1, data: antenna }
  end

  def city
    antenna = Antenna.city_name(turkish_to_capitalascii(params[:c]))
    render json: { status: 1, data: antenna }
  end

  def band
    antenna = Antenna.band_type(params[:b].upcase)
    render json: { status: 1, data: antenna }
  end

  def city_band
    antenna = Antenna.city_and_band(turkish_to_capitalascii(params[:c]), params[:b].upcase)
    render json: { status: 1, data: antenna }
  end

  private
  def turkish_to_capitalascii(word)
    word.upcase.gsub('Ç','C').gsub('Ğ','G').gsub('İ','I').gsub('Ö','O').gsub('Ş','S').gsub('Ü','U')
  end
end
