class CreateArticales < ActiveRecord::Migration
  def change
    create_table :articales do |t|
      t.belongs_to :Employee, index: true
      
      t.string :topic
      t.string :description
      t.timestamps null: false
    end
  end
end
