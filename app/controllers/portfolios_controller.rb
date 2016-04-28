class PortfoliosController < ApplicationController
	
	def index
		@portfolios = Portfolio.all.order("seqNo")
		@portfolio = Portfolio.new
	end
	
	def new
		@portfolio = Portfolio.new
	end

	def create
		@portfolio = Portfolio.new(portfolio_params)
		if @portfolio.save
			redirect_to portfolios_path
		else
			render 'new'
		end
	end

	def show
		@portfolio = Portfolio.find(params[:id])
	end

	def edit
		@portfolio = Portfolio.find(params[:id])
	end

	def delete
		@portfolio = Portfolio.find(params[:id])
	end

	private 
	def portfolio_params
		seqNo = Portfolio.all.maximum("seqNo")
		params.require(:portfolio).permit(:portfolioName, :seqNo)
	end

#	def maxSeqNo
#		params[:portfolio][:seqNo].Portfolio.all.maximum("seqNo")
#	end

end
