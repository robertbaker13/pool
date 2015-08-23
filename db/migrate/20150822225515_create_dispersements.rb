class CreateDispersements < ActiveRecord::Migration
  def change
    create_table :dispersements do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :pool_employee_position, index: true, foreign_key: true
      t.integer :amount
      t.string :status

      t.timestamps null: false
    end
  end
end
