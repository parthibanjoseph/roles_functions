class SubOrganizationsController < ApplicationController
	def index
		@sub_organizations = SubOrganization.all.order("seqNo")
		@sub_organization = SubOrganization.new
	end
	
	def new
		@sub_organization = SubOrganization.new
	end

	def create
		@sub_organization = SubOrganization.new(sub_organization_params)
		if @sub_organization.save
			redirect_to sub_organizations_path
		else
			render 'new'
		end
	end

	private 
	def sub_organization_params
		params.require(:sub_organization).permit(:subOrganizationName, :seqNo, :external_organization_id)
	end
end
