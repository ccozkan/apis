class StationsController < ApplicationController
  def index
    station = Station.all
    render json: { status: 1, data: station }
  end

  def show
    station = Station.find(params[:id])
    render json: { status: 1, data: station }
  end

end
