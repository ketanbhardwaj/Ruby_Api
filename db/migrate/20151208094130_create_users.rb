class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, uniqueness: true
      t.string :gender
      t.integer :phone
      t.string :username, uniqueness: true
      t.string :password
      t.timestamps null: false
    end
  end
end
