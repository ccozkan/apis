# :nodoc:
class WelcomeController < ApplicationController
  def index
    redirect_to 'https://github.com/ozkc/apis'
  end
end
