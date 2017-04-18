class HomeController < ApplicationController
  def index
  @directions = Direction.all
  end
end
