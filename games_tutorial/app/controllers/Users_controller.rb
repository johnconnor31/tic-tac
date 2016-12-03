class UsersController < ApplicationController
def new
    @user= User.new
  end
def create
  @user= User.new(i_params)
  if @user.save
    flash.now.alert = 'Signed up!'
    redirect_to log_in_url
  else
    render log_in_url
  end
end
private def i_params
  params.require(@user).permit(:name,:password)
end
end