class WinesController < ApplicationController

	def new
		@wine = Wine.new
		render :new
	end

	def create
		wine_params = params.require(:wine).permit(:vineyard, :year, :name, :color, :notes, :link)
		wine = Wine.create(wine_params)
		redirect_to "/wines"

	end

	def index
		@wines = Wine.all
		render :index
	end

	def show
		@wine = Wine.find(params[:id])
	end
	
end