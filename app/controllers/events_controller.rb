class EventsController < ApplicationController
  def new
    @evento = Event.new
  end

  def create
    @evento = Event.new(event_params)
    @evento.save
    redirect_to @evento
  end
  
  def show
    @evento = Event.find(params[:id])
    # @evento.id
  end
  
  private

  def event_params
    params.require(:event).permit(:name, :when)
  end
end
