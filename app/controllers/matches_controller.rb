class MatchesController < ApplicationController
  def new
    @match = Match.new
    @buddies = User.where(role: "buddy")
    @patients = User.where(role: "patient")
    respond_to do |format|
      format.js
    end
  end

  def create
    @match = Match.new(coordinator_id: current_user.id, buddy_id: match_params[:buddy], patient_id: match_params[:patient])
    if @match.save!
      redirect_to my_profile_path
    else
      render :new
    end
  end

  private

  def match_params
    params.require(:match).permit(:buddy, :patient)
  end
end
