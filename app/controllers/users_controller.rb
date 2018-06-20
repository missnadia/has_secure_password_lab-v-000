class UsersController < ApplicationController
  before_action :require_login

  def new
  end

  def create
    @user = User.create(user_params)
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :password, :password_digest
    )
  end
end
