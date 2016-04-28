class LifeCycleStep < ActiveRecord::Base
	has_many :tasks

	before_save do 
		self.seqNo = LifeCycleStep.all.maximum(:seqNo) + 10
	end
end
