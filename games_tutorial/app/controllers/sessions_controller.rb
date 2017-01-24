class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.authenticate(params[:name],params[:password])
    if user!=nil
      session[:name] = user.name 
      redirect_to root_path
    else
      flash.now.alert = "login failed"
      render 'new'
    end
  end
  def destroy
    session[:name] = nil
    redirect_to log_in_url , :notice => 'Signed out'
  end
end