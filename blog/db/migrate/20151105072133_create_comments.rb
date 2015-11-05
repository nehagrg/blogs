class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :employee
      t.string :comments
      t.belongs_to :speech
      t.timestamps null: false
    end
  end
end
