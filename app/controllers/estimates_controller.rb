class EstimatesController < ApplicationController

	def index
		
		@portfolios = Portfolio.all

	end
	
	def new
		@estimates = Estimate.all
		@estimate = Estimate.new
	end

	def edit
		@estimates = Estimate.where(responsibility_id: params[:responsibility_id], portfolio_id: params[:portfolio_id])
	end

	def show
		@estimates = Estimate.where(responsibility_id: params[:responsibility_id], portfolio_id: params[:portfolio_id])
	end
	def update
	end

	def create
		@estimate = Estimate.new(estimate_params)
		if @estimate.save
			redirect_to estimates_path
		else
			render 'new'
		end
	end

	private 
	def estimate_params
		params.require(:estimate).permit(:responsibility_id, :task_id, :portfolio_id, :tonnage, :effort)
	end
end
