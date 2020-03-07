class StationPoisController < ApplicationController
  def index
    station_poi = StationPoi.all
    render json: { status: 1, data: station_poi }
  end

  def show
    station_poi = StationPoi.find(params[:id])
    render json: { status: 1, data: station_poi }
  end

  def near
    station_poi = StationPoi.where(station_id:  params[:q])
    render json: { status: 1, data: station_poi }
  end

  def random
    station_poi = StationPoi.find((StationPoi.all.size * rand + 1).floor)
    render json: { status: 1, data: station_poi }
  end

end
