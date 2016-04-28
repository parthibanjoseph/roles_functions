class LifeCycleStepsController < ApplicationController
	def index
		@life_cycle_steps = LifeCycleStep.all.order("seqNo")
		@life_cycle_step = LifeCycleStep.new
	end
	
	def new
		@life_cycle_step = LifeCycleStep.new
	end

	def create
		@life_cycle_step = LifeCycleStep.new(life_cycle_step_params)
		if @life_cycle_step.save
			redirect_to life_cycle_steps_path
		else
			render 'new'
		end
	end

	private 
	def life_cycle_step_params
		params.require(:life_cycle_step).permit(:lifeCycleStepName, :seqNo)
	end
end
