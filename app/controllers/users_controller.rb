class UsersController < ApplicationController
  def my_profile
    @user = current_user
    @users = User.all
    @conversations = Conversation.all
    set_messages
    @event = Event.new
    @user_events = UserEvent.where(user: current_user)
    @data = []
    @user_events.each do |user_event|
      @data << { id: user_event.id, title: user_event.event.title, start: user_event.event.start, end: user_event.event.end, description: user_event.event.description, location: user_event.event.location, color: user_event.attendance_color }
    end
    @match = Match.find_by(buddy_id: current_user.id)
    @user_got_interests = user_got_interests?
    @user_attend_event = user_attend_event?
    @user_has_mate = user_has_mate?
  end

  def user_got_interests?
    interest = UserInterest.where(user_id: current_user.id)
    interest.present?
  end

  def user_attend_event?
    attend_event = UserEvent.where(user_id: current_user.id, attendance: true)
    attend_event.present?
  end

  def user_has_mate?
    match = Match.find_by(buddy_id: current_user.id)
    match.present?
  end

  private

  def set_messages
    @conversation = Conversation.find 12
    if !@conversation.nil?
      @messages = @conversation.messages
      if @messages.length > 10
        @over_ten = true
        @messages = @messages[-10..-1]
      end
      if params[:m]
        @over_ten = false
        @messages = @conversation.messages
      end
      if @messages.last
        @messages.last.read = true if @messages.last.user_id != current_user.id
      end
      @message = @conversation.messages.new
    end
  end
end
