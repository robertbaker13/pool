class CreateTipPools < ActiveRecord::Migration
  def change
    create_table :tip_pools do |t|
      t.references :schedule
      t.integer :amount
      t.datetime :dispersement

      t.timestamps null: false
    end
  end
end
