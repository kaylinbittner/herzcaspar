class UsersController < ApplicationController
  def my_profile
    @user = current_user
    @users = User.all
    @conversations = Conversation.all
    set_messages
    @event = Event.new
  end

  private

  def set_messages
    @conversation = Conversation.find_by(id: params[:conversation_id]) || Conversation.first
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
