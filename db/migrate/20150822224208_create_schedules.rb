class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :note
      t.date :date
      t.references :schedule_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
