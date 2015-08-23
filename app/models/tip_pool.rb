class TipPool < ActiveRecord::Base
  belongs_to :schedule, dependent: :destroy
  has_many :pool_employee_positions
end
