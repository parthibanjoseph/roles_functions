class ExternalOrganization < ActiveRecord::Base
	has_many :sub_organizations

	before_save do 
		self.seqNo = ExternalOrganization.all.maximum(:seqNo) + 10
	end
end
