class ScheduleEmployeePosition < ActiveRecord::Base
  belongs_to :employee_position, dependent: :destroy
  belongs_to :schedule

  def dispersed
    self.schedule.dispersed
  end
end
