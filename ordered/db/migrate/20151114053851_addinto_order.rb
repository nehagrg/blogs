class AddintoOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :order_date, :datetime
  	add_column :orders, :customer_id, :integer
  end
end
