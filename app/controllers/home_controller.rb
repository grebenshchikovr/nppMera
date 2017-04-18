class HomeController < ApplicationController
  def index
  @directions = Direction.all
  @events = Event.last(5).reverse
  end
end
