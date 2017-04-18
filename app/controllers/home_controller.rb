class HomeController < ApplicationController
  def index
  @directions = Direction.all
  @events = Event.last(5).reverse
  @products = Product.last(6).reverse
  end
end
