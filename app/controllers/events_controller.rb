class EventsController < ApplicationController
  def index
    @data = []
    @events = Event.all
    # current_user.events
    @events.each do |e|
      @data << { title: e.title, start: e.start, end: e.end, description: e.description, location: e.location }
    end
  end

  def show
  end

  def new
    @event = Event.new()
    @users = User.all
    respond_to do |format|
      format.js
    end
  end

  def create
    @event = Event.new(event_params)
    @event.coordinator_id = current_user.id
    @data = []
    if @event.save!
      participants = params[:event][:participants]
      participants.delete_at(0)
      participants.each do |p|
        UserEvent.create(user_id: "#{p}", event_id: "#{@event.id}")
      end
      redirect_to my_profile_path
    else
      render :new
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
    params.require(:event).permit(:description, :title, :start, :end, :location)
  end
end
