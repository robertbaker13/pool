class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nickname
      t.string :given_name
      t.string :family_name
      t.string :email
      t.string :phone
      t.string :picture
      t.boolean :admin
      t.boolean :archived
      t.string :refresh_token
      t.string :access_token
      t.string :expires

      t.timestamps null: false
    end
  end
end
