class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name]).try(:authenticate, params[:user][:password])
    
    return redirect_to(controller: 'sessions', action: '') unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id

  end

  def destroy
    session.delete = :user_id
    redirect_to '/'
  end
end
