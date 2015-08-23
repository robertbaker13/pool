class CreateScheduleTypePositions < ActiveRecord::Migration
  def change
    create_table :schedule_type_positions do |t|
      t.references :schedule_type, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true
      t.integer :points

      t.timestamps null: false
    end
  end
end
