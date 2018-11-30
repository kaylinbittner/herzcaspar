class UsersController < ApplicationController
  def my_profile
    @user = current_user
    @data = []
    @events = Event.all
    @events.each do |e|
      @data << { title: e.title, start: e.start, end: e.end, description: e.description, location: e.location }
    end
  end


end


