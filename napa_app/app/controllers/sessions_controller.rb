class SessionsController < ApplicationController

  def new
    @user = User.new
    render layout: "sidebar"

  end

  def create
    user_params = params.require(:user).permit(:username, :password)
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to "/users/#{@user.id}"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/login"
  end

  

end