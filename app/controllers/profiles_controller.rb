class ProfilesController < ApplicationController

  layout "signup"

  def edit
  end

  def update
    # SAVE THE INFORMATION SENT BY THE FORM
    if current_user.update(user_params)
      redirect_to my_profile_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :photo, :bio)
  end
end


