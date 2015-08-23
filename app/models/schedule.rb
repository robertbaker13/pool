class Schedule < ActiveRecord::Base
  belongs_to :schedule_type
  has_many :schedule_employee_positions
  has_many :tip_pools
end
