class AddToArticals < ActiveRecord::Migration
  def change
  	add_column :articals, :name, :string, :limit=>2
  	add_column :articals, :uid,  :integer, :default=>0
  end
end
