class CreateDealOrders < ActiveRecord::Migration
  def change
    create_table :deal_orders do |t|
      t.references :deal
      t.references :order
      t.timestamps null: false
    end
  end
end
