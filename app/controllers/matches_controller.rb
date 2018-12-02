class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def new
    @buddies = User.where(role: "buddy")
    @patients = User.where(role: "patient")
    @coordinator = current_user

  end

  def create

  end
end
