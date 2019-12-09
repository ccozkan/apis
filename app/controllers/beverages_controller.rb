class BeveragesController < ApplicationController
  def index
    beverage = Beverage.all
    render json: {status: 'GO', data: beverage}
  end

  def show
    beverage = Beverage.find(params[:id])
    render json: {status: 'GO', data: beverage}, status: :ok
  end

end
