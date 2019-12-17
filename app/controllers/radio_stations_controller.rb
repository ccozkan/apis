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
    radio_station = RadioStation.where('name LIKE ?', '%' + params[:q].downcase + '%')
    render json: { status: 1, data: radio_station }
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
end
