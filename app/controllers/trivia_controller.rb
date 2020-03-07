class TriviaController < ApplicationController
  def random
    trivium = Trivium.find((Trivium.all.size * rand + 1).floor)
    render json: { status: 1, data: trivium }
  end

  def index
    trivium = Trivium.all
    render json: { status: 1, data: trivium }
  end

  def show
    trivium = Trivium.find(params[:id])
    render json: { status: 1, data: trivium }
  end
end
