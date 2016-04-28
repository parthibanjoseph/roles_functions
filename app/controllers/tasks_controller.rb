class TasksController < ApplicationController
	def index
		@tasks = Task.all
		@task = Task.new
	end

	def show
		@task = Task.find(params[:id])
	end

	def edit
		@task = Task.find(params[:id])
	end

	def show
		@task = Task.find(params[:id])
	end

	
	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to tasks_path
		else
			render 'new'
		end
	end

	private 
	def task_params
		params.require(:Task).permit(:taskName, :seqNo, :life_cycle_step_id)
	end
end
