class UserInterestsController < ApplicationController
  def new
    @user_interest = UserInterest.new
    @interests = Interest.select(:area).distinct
    @area_array = []
    @interests.all.each { |interest| @area_array << interest.area }
    @sports = Interest.where(area: "sport")
    @movies = Interest.where(area: "movies")
    @books = Interest.where(area: "books")
  end

  def create
    user_interest = UserInterest.new(user_interests_params)
    interest_array = user_interest.transferer.split(",").drop(1)
    interest_array.each do |interest|
      interest = UserInterest.new(user_id: current_user.id, interest_id: interest)
      interest.save
    end
    redirect_to my_profile_path
  end

  private

  def user_interests_params
    params.require(:user_interest).permit(:transferer)
  end
end
