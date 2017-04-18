class EventsController < ApplicationController

 
 before_filter only: [:new, :create]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
  end

  def create
    @event = Event.new(direction_params)
    
    if @event.save
      redirect_to new_event_path
    else
      render action: 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to new_event_path
    else
      render action: 'edit'
    end    
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :date, :thumbnail)
  end

end
