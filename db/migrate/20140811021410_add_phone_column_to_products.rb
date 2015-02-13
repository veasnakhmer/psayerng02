class AddPhoneColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :phone, :integer
  end
end
