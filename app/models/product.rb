class Product < ActiveRecord::Base
  
 self.inheritance_column = nil
	has_attached_file :image
	has_attached_file :image2
	has_attached_file :image3

  

end
