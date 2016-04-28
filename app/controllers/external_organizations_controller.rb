class ExternalOrganizationsController < ApplicationController
	def index
		@external_organizations = ExternalOrganization.all.order("seqNo")
		@external_organization = ExternalOrganization.new
	end
	
	def new
		@external_organization = ExternalOrganization.new
		@maxSeqNo = ExternalOrganization.all.maximum("seqNo")
	end

	def create

		@external_organization = ExternalOrganization.new(external_organization_params)
		if @external_organization.save
			redirect_to external_organizations_path
		else
			render 'new'
		end
	end

	private 
	def external_organization_params
		params.require(:external_organization).permit(:externalOrganizationName, :seqNo)
	end

end
