class CreatePoolEmployeePositions < ActiveRecord::Migration
  def change
    create_table :pool_employee_positions do |t|
      t.references :employee_position, index: true, foreign_key: true
      t.references :tip_pool, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
