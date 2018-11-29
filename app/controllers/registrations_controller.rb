class RegistrationsController < Devise::RegistrationsController

  private

  def after_sign_up_path_for(resource)
    edit_profile_path
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :photo)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :photo)
  end
end
