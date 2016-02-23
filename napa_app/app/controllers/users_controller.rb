class UsersController < ApplicationController
	# before_action :require_login

	# def login

	# end

	def signup
		@user = User.new
		render :signup
	end

	def create
		user_params = params.require(:user).permit(:username, :preferences, :email, :password_digest)
		@user = User.create(user_params)
		# login(@user)
		redirect_to "/users/account"
	end

	def show
		# @user = User.find(params[:id])
		render :account
	end

	def account
		# @user = User.find(params[:id])
		render :account
	end

  # private

  # def require_login
  #   if !current_user
  #     redirect_to root_path 
  #   end
  # end

end