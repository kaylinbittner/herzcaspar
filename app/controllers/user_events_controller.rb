class UserEventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def update
    user_event = UserEvent.find(params[:id])
    user_event.attendance = params[:_json]
    user_event.save!
  end

  private

  def user_event_params
    params.require(:user_event).permit(:id, :_json)
  end
end
