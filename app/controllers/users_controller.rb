class UsersController < ApplicationController
  def my_profile
    @user = current_user
  end
end


 def edit
    puts "hello from edit"
  end

  def update
    @user.update(flat_user)
    redirect_to @user
  end
