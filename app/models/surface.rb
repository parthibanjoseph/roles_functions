class Surface < ActiveRecord::Base
  belongs_to :role
  belongs_to :task
  belongs_to :portfolio
end
