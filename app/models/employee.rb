class Employee < ActiveRecord::Base
  has_many :dispersements
  has_many :employee_positions
end
