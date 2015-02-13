class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :email
      t.integer :price
      t.string :category
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
