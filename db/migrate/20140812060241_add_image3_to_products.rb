class AddImage3ToProducts < ActiveRecord::Migration
  
  def self.up
    add_attachment :products, :image3
  end
  def self.down
    remove_attachment :products, :image3
  end
end
