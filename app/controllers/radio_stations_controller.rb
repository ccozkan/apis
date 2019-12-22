# coding: utf-8
# :nodoc:
class RadioStationsController < ApplicationController
  def index
    radio_station = RadioStation.all
    render json: { status: 1, data: radio_station }
  end

  def show
    radio_station = RadioStation.find(params[:id])
    render json: { status: 1, data: radio_station }
  end

  def random
    radio_station = RadioStation.find((RadioStation.all.size * rand + 1).floor)
    render json: { status: 1, data: radio_station }
  end

  def search
    if params[:q].size >1
        radio_station = RadioStation.where('name LIKE ?', '%' + turkish_to_capitalascii(params[:q].upcase) + '%')
        render json: { status: 1, data: radio_station }
    else
      render json: { status: 0, text: 'MORE THAN ONE CHARACTER IS NEEDED' }
    end
  end

  def name
    radio_station = RadioStation.where(name: + params[:q].downcase)
    render json: { status: 1, data: radio_station }
  end

  def genre
    radio_station = RadioStation.where(genre: + params[:q].downcase)
    render json: { status: 1, data: radio_station }
  end

  def country
    radio_station = RadioStation.where(country: + params[:q].upcase)
    render json: { status: 1, data: radio_station }
  end

  private
  def turkish_to_capitalascii(word)
    word.upcase.gsub('Ç','C').gsub('Ğ','G').gsub('İ','I').gsub('Ö','O').gsub('Ş','S').gsub('Ü','U')
  end
end
