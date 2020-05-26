class EventsController < ApplicationController
  def new
    @evento = x.events.build
  end

  def create
    # @evento =  x.events.build(event_params)
    # @evento.save
    # redirect_to @evento
  end
  
  def show
    @evento = Event.find(params[:id])
    # @evento.id
  end
  
  private

  def event_params
    params.require(:event).permit(:name, :when, :user_id)
  end
end
