class UsersController < ApplicationController
  def my_profile
    @user = current_user
    @data = []
    @events = Event.all
    @events.each do |e|
    @data << { title: e.title, start: e.start, end: e.end, description: e.description, location: e.location }
    end
  end

  def edit
    # puts "hello from edit"
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end
end


