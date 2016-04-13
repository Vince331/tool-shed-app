class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.float :price
      t.integer :quantity
    end
  end
end
