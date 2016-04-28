class Task < ActiveRecord::Base
  belongs_to :life_cycle_step
  has_many :surfaces
  has_many :estimates
end
