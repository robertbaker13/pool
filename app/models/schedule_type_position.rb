class ScheduleTypePosition < ActiveRecord::Base
  belongs_to :schedule_type, dependent: :destroy
  belongs_to :position, dependent: :destroy

  def dispersed
    self.schedule_type.dispersed
  end
end
