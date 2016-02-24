class InfosController < ApplicationController

	def index
		@infos = Info.all
	end

	def new
		@info = Info.new
	end

	def create
		info_params = params.require(:info).permit(:review, :textNotes, :wine_id, :user_id)
		info = Info.create(info_params)
		redirect_to "/infos"

	end

end