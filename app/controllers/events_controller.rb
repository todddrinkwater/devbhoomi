class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end
  
  def create
    @event = Event.new(event_params)

    @event.save
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end
  
  private

  def event_params
    params.require(:events).permit(
      :name,
      :time,
      :details,
    )
  end
end
