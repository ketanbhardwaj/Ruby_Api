class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      # t.integer :deal_price
      # t.string :deal_name
      # t.string :location
      t.timestamps null: false
    end
  end
end
