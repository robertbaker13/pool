class PoolEmployeePosition < ActiveRecord::Base
  belongs_to :employee_position
  belongs_to :tip_pool, dependent: :destroy
  has_many :dispersements

  def dispersed
    self.tip_pool.dispersed
  end
end
