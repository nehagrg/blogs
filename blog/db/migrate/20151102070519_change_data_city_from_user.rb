class ChangeDataCityFromUser < ActiveRecord::Migration
  def change
  	change_column :users, :place, :text
  end
end
