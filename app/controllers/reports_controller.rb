class ReportsController < ApplicationController
  def new
  end

  def create
  	@reports = Report.new(params[:item])

	@reports = Report.create(params.require(:report).permit(:item))
	@reports.save
	redirect_to @reports
	end

	def show
	    @items = Report.take(10)
	end
end
