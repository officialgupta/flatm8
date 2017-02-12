class FlatsController < ApplicationController
	def new
	end

	def create
		@flat = Flat.new(params[:name])

		@flat = Flat.create(params.require(:flat).permit(:name))
		@flat.save
		redirect_to @flat
		# redirect_to "/report/main"
	end

	def show
	    @flat = Flat.find(params[:id])
	end
end
