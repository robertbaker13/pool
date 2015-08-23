class Position < ActiveRecord::Base
  has_many :employee_positions
  has_many :schedule_type_positions
end
