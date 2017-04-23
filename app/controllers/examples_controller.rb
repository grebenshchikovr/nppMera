class ExamplesController < ApplicationController
  
  
  def create
    @direction = Direction.find(params[:direction_id])
    @direction.examples.create(example_params)

    redirect_to direction_path(@direction)
  end

  private

  def example_params
    params.require(:example).permit(:title, :content)
  end

end
