class Estimate < ActiveRecord::Base
  belongs_to :responsibility
  belongs_to :task
  belongs_to :portfolio
end
