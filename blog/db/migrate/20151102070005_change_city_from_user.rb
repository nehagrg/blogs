class ChangeCityFromUser < ActiveRecord::Migration
  def change
  	rename_column :users, :city, :place
  end
end
