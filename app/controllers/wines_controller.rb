class WinesController < ApplicationController

	def new
		@wine = Wine.new
		render layout: "sidebar"

	end

	def create
		wine_params = params.require(:wine).permit(:name, :vineyard, :year, :color, :notes, :link)
		wine = Wine.create(wine_params)
		if wine.save
			redirect_to "/wines"
		end

	end

	def index
		@wines = Wine.all
		render layout: "sidebar"

	end

	def show
		@wine = Wine.find(params[:id])
		@info = Info.new
		render layout: "sidebar"

	end
	
end