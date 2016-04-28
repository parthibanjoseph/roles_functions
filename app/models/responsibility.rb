class Responsibility < ActiveRecord::Base
  belongs_to :sub_organization
  has_many :estimates

  before_save do 
		self.seqNo = Responsibility.all.maximum(:seqNo) + 10
	end
end

