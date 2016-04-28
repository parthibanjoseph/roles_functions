class Role < ActiveRecord::Base
	has_many :surfaces

	before_save do 
		self.seqNo = Role.all.maximum(:seqNo) + 10
	end
end
