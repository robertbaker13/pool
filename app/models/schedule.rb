class Schedule < ActiveRecord::Base
  belongs_to :schedule_type
  has_many :schedule_employee_positions
  has_many :tip_pools

  def dispersed
    TipPool.where(schedule: self).any? { |obj| obj.dispersed }
  end
end
