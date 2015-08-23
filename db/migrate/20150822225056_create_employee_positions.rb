class CreateEmployeePositions < ActiveRecord::Migration
  def change
    create_table :employee_positions do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
