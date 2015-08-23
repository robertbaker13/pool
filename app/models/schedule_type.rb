class ScheduleType < ActiveRecord::Base
  has_many :schedules
  has_many :schedule_type_positions
end
