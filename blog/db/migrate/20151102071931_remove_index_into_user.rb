class RemoveIndexIntoUser < ActiveRecord::Migration
  def change
  	remove_index :users, :name
  end
end
