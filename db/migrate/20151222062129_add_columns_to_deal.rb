class AddColumnsToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :deal_price, :integer
    add_column :deals, :deal_name, :string
    add_column :deals, :deal_location, :string
  end
end
