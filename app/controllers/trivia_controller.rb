class TriviaController < ApplicationController
  def random
    trivium = Trivium.find((Trivium.all.size * rand + 1).floor)
    render json: { status: 1, data: trivium }
  end

end
