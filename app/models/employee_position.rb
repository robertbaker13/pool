class EmployeePosition < ActiveRecord::Base
  belongs_to :employee, dependent: :destroy
  belongs_to :position, dependent: :destroy
  has_many :pool_employee_positions
  has_many :schedule_employee_positions
end
