class QuotesController < ApplicationController
  def random
    quote = Quote.find((Quote.all.size * rand + 1).floor)
    render json: { status: 1, data: quote }
  end
end
