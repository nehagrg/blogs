class AddintoEmployee < ActiveRecord::Migration
  def change
  	add_column :employees, name, :string
  end
end
