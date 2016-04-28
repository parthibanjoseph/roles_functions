class Portfolio < ActiveRecord::Base
	has_many :surfaces
	has_many :estimates

	before_save do 
		self.seqNo = Portfolio.all.maximum(:seqNo) + 10
	end
end