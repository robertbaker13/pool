class CreateTipPools < ActiveRecord::Migration
  def change
    create_table :tip_pools do |t|
      t.references :schedule
      t.integer :amount
      t.boolean :dispersed
      t.datetime :dispersement_point

      t.timestamps null: false
    end
  end
end
