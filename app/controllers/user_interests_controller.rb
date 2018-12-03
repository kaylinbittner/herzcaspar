class UserInterestsController < ApplicationController
  def new
    @user_interest = UserInterest.new
    @interests = Interest.all
    @area_array = []
    @interests.all.each { |interest| @area_array << interest.area}
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

  def get_interests
    interest_id = params[:interest_id]
    @interest_variant = Interest.find(interest_id)

    render json: @books
  end

  def user_interests_params
    params.require(:user_interests).permit(:interest)
  end
end
