class UsersController < ApplicationController

	def login
	end

	def new
		@user = User.new
		render :new
	end

	def account
	end

end