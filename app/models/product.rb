class Product < ActiveRecord::Base
    #===================== Relationship ======================================
       has_many :product_master

end
