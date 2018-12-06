class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.all
    @users = User.all
    respond_to do |format|
      format.js
    end
  end

  def show
    @conversation = Conversation.includes(messages: :user).find(params[:id])
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

    respond_to do |format|
      format.js # <-- will render `app/views/conversations/show.js.erb`
    end
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to @conversation
  end

  private

  def conversation_params
    params.permit(:id, :recipient_id, :sender_id)
  end
end
