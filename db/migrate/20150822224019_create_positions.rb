class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.string :permission
      t.boolean :archived

      t.timestamps null: false
    end
  end
end
