class DirectionsController < ApplicationController

 
 before_filter only: [:new, :create]

  def index
    @directions = Direction.all
  end

  def show
    @direction = Direction.find(params[:id])
  end

  def new
  end

  def create
    @direction = Direction.new(direction_params)
    
    if @direction.save
      redirect_to new_direction_path
    else
      render action: 'new'
    end
  end

  def edit
    @direction = Direction.find(params[:id])
  end

  def update
    @direction = Direction.find(params[:id])

    if @direction.update(direction_params)
      redirect_to new_direction_path
    else
      render action: 'edit'
    end    
  end

  def destroy
    @direction = Direction.find(params[:id])
    @direction.destroy

    redirect_to directions_path
  end

  private

  def direction_params
    params.require(:direction).permit(:title, :content, :thumbnail)
  end

end