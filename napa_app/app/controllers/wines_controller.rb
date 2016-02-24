class WinesController < ApplicationController

	def new
		@wine = Wine.new
	end

	def create
		wine_params = params.require(:wine).permit(:vineyard, :year, :name, :color, :notes, :link)
		wine = Wine.create(wine_params)
		if wine.save
			redirect_to "/wines"
		end
		info_params = params.require(:info).permit(:review, :textNotes, :user_id, :wine_id)
		info = Info.create(info_params)
		if info.save
			redirect_to "/infos"
		end

	end

	def index
		@wines = Wine.all
	end

	def show
		@wine = Wine.find(params[:id])
		@info = Info.new
	end
	
end