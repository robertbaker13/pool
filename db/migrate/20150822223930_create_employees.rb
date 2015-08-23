class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nickname
      t.string :given_name
      t.string :family_name
      t.string :email
      t.string :phone
      t.string :picture
      t.string :token
      t.string :expiration

      t.timestamps null: false
    end
  end
end
