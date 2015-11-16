class UpdateTableCustomer < ActiveRecord::Migration
  def change
  	add_column :customers, orders_count, :integer
  end
end
