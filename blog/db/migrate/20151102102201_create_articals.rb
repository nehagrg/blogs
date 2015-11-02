class CreateArticals < ActiveRecord::Migration
  def change
    create_table :articals, :force=>true do |t|
      t.string :name
      t.integer :uid
      t.timestamps null: false
    end
  end
end
