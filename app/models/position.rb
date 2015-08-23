class Position < ActiveRecord::Base
  has_many :employee_positions
  has_many :schedule_type_positions

  def dispersed
    ScheduleTypePosition.where(position: self).any? { |obj| obj.dispersed }
  end
end
