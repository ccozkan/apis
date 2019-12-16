class RadioStationsController < ApplicationController

  def index
    radio_station = RadioStation.all
    render json: {status: 1, data: radio_station}
  end

  def show
    radio_station = RadioStation.find(params[:id])
    render json: {status: 1, data: radio_station}
  end

  def random
    radio_station = RadioStation.find((RadioStation.all.size*rand+1).floor)
    render json: {status: 1, data: radio_station}
  end

end
