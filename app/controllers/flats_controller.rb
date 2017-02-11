class FlatsController < ApplicationController
	def new
	end

	def create
		@flat = Flat.new(params[:name])
		
		@flat.save
		redirect_to @flat


		@flat = Flat.new(params.require(:flat).permit(:name))
	end

	def show
	    @flat = Flat.find(params[:id])
	end
end
