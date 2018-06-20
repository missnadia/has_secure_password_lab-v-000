class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(user_params).save
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :password,
      :password_confirmation
    )
  end
end
