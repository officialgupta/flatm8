class FlatsController < ApplicationController
	def new
	end

	def create
		@flat = Flat.new(params[:name])

		@flat = Flat.create(params.require(:flat).permit(:name))
		@flat.save
		redirect_to @flat
		#@user.flat = :id
	end

	def show
	    @flat = Flat.find(params[:id])
	end
end
