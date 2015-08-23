class CreateScheduleTypes < ActiveRecord::Migration
  def change
    create_table :schedule_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
