class Dispersement < ActiveRecord::Base
  belongs_to :employee
  belongs_to :pool_employee_position
end
