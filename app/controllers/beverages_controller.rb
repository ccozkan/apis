class BeveragesController < ApplicationController
  def index
    beverage = Beverage.all
    render json: {status: 1, data: beverage}
  end

  def show
    beverage = Beverage.find(params[:id])
    render json: {status: 1, data: beverage}
  end

  def name
    beverage = Beverage.beverage_name(params[:q].downcase)
    render json: {status: 1, data: beverage}
  end

  def category
    beverage = Beverage.beverage_category(params[:q].downcase)
    render json: {status: 1, data: beverage}
  end

  def search
    beverage = Beverage.where('name LIKE ?', '%' + params[:q].downcase + '%')
    render json: {status: 1, data: beverage}
  end

end
