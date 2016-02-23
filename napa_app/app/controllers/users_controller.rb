class UsersController < ApplicationController
	# before_action :require_login
	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:username, :password)
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to user_path(user)
		else 
			redirect_to "/login"
		end
	end

	def show
		@user = User.find(params[:id])
	end

end