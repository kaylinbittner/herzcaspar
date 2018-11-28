class EventsController < ApplicationController
  def index
    @data = []
    @events = Event.all
    @events.each do |e|
    @data << { title: e.title, start: e.start, end: e.end, description: e.description, location: e.location }
    end
    return @data
  end

  def show

  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_params)
    @event.coordinator_id = current_user.id
    if @event.save
      redirect_to events_path
    else
    end

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def event_params
  params.require(:event).permit(:description, :title, :start, :end, :location,)
end
end
