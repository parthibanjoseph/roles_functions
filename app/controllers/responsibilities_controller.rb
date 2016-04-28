class ResponsibilitiesController < ApplicationController
	def index
		@responsibilities = Responsibility.all.order("seqNo")
		@responsibility = Responsibility.new
		@sub_organizations=SubOrganization.all
	end
	
	def new
		@responsibility = Responsibility.new
		@sub_organizations=SubOrganization.all
	end

	def create
		@responsibility = Responsibility.new(responsibility_params)
		if @responsibility.save
			redirect_to responsibilities_path
		else
			render 'new'
		end
	end

	private 
	def responsibility_params
		params.require(:responsibility).permit(:sub_organization_id, :responsibilityName, :seqNo)
	end
end
