class SurfacesController < ApplicationController
	def index
		@portfolios = Portfolio.all
		@surfaces = Surface.all.order("seqNo")
		@surface = Surface.new
		#@related = Surface.find(:all, :conditions => "isRelated is not null")
		#@nonrelated = Surface.find(:all, :conditions => "isRelated is null")
		#@isrelated1 = self.find(:role_id => 1).isRelated

	end

	def show
		@surface = Surface.find(params[:id])
	end

	def edit
		@surface = Surface.find(params[:id])
		#@task = Task.find(param([:id] => surface.task_id))
	end

	
	def new
		@surface = Surface.new
	end

	def create
		@surface = Surface.new(surface_params)
		if @surface.save
			redirect_to surfaces_path
		else
			render 'new'
		end
	end

	private 
	def surface_params
		params.require(:surface).permit(:isRelated, :role_id, :task_id, :portfolio_id)
	end
end
