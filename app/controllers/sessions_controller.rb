class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name]).try(:authenticate, params[:user][:password])
    return redirect_to(controller: 'sessions', action: 'new') unless @user
    session[:user_id] = @user.id
    redirect_to controller: 'users', action: 'index'
  end

  def destroy
    session.delete = :user_id
    redirect_to '/'
  end
end
