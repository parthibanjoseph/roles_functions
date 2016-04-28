class SubOrganization < ActiveRecord::Base
  belongs_to :external_organization
  has_many :responsibilities

  before_save do 
		self.seqNo = SubOrganization.all.maximum(:seqNo) + 10
	end
end
