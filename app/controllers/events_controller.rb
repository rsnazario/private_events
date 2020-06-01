class EventsController < ApplicationController
  def index
    @event = Event.all
    @upcoming_events = future
    @previous_events = previous
  end

  def new
    @event = current_user.event_creator.build
  end

  def create
    @event = current_user.event_creator.build(event_params)
    @event.save
    redirect_to user_path(current_user.id)
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  private
  def event_params
    params.require(:event).permit(:name, :description, :event_when)
  end

  def future
    Event.where('events.event_when < ?', Time.now)
  end
  
  def previous
    Event.where('events.event_when > ?', Time.now)
  end
end
