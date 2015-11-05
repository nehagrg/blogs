class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
	  t.belongs_to :employee, index: true
      t.string :topic
      t.string :description
      t.timestamps null: false
    end
  end
end
