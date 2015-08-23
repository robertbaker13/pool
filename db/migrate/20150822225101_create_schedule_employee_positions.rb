class CreateScheduleEmployeePositions < ActiveRecord::Migration
  def change
    create_table :schedule_employee_positions do |t|
      t.references :employee_position, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
