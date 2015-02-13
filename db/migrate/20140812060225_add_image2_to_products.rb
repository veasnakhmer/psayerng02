class AddImage2ToProducts < ActiveRecord::Migration
  
  def self.up
    add_attachment :products, :image2
  end
  def self.down
    remove_attachment :products, :image2
  end
end
