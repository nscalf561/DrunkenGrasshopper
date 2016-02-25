class InfosController < ApplicationController

	def index
		@infos = Info.all
		render layout: "sidebar"
	end

	def new
		@info = Info.new
		render layout: "sidebar"

	end

	def create
		info_params = params.require(:info).permit(:review, :textNotes, :wine_id, :user_id)
		info = Info.create(info_params)
		redirect_to "/infos"

	end

end