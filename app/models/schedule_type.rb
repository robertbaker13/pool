class ScheduleType < ActiveRecord::Base
  has_many :schedules
  has_many :schedule_type_positions

  def dispersed
    Schedule.where(schedule_type: self).any? { |obj| obj.dispersed }
  end
end
