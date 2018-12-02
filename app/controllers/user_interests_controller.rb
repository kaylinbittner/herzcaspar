class UserInterestsController < ApplicationController
  def new
    @user_interest = UserInterest.new
    @interests = Interest.all
  end

  def create
    user_interest = UserInterest.new(user_interests_params)
    if user_interest.save
      redirect_to my_profile_path
    else
      render :new
    end
  end

  private

  def user_interests_params
    params.require(:user_interests).permit(:interest)
  end
end
