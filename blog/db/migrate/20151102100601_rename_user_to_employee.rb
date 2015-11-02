class RenameUserToEmployee < ActiveRecord::Migration
  def change
  	rename_table :users, :employees
  end
end
