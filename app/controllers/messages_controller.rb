class MessagesController < ApplicationController
  # before_action do
  #   @conversation = Conversation.find(params[:conversation_id])
  # end

  # def index
  #   @messages = @conversation.messages
  #   if @messages.length > 10
  #     @over_ten = true
  #     @messages = @messages[-10..-1]
  #   end
  #   if params[:m]
  #     @over_ten = false
  #     @messages = @conversation.messages
  #   end
  #   if @messages.last
  #     @messages.last.read = true if @messages.last.user_id != current_user.id
  #   end
  #   @message = @conversation.messages.new
  # end

  # def new
  #   @message = @conversation.messages.new
  # end

  def create
    @message = Message.new(message_params)
    @conversation = Conversation.find(params[:conversation_id])
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to conversations_path(@conversation) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "conversations/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id, :conversation_id)
  end
end
