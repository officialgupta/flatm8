class ReportController < ApplicationController
  def main
  end

  def create
  		@problem = Problem.new(params[:item])


  		@problem = Problem.create(params.require(:problem).permit(:item))

  		@problem.save
  		redirect_to @problem
  end

  def show
  	@problem = Problem.find(params[:id])
  end
end
