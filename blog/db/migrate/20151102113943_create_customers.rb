class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers, :id => false, :primary_key => :c_id do |t|
      t.integer :c_id
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
