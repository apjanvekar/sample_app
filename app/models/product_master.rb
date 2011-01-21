class ProductMaster < ActiveRecord::Base
    #===================== Relationship ======================================
        belongs_to :product
    #=========================================================================
    #====================== Validation =======================================
       validates_presence_of :quantity
       validates_presence_of :price
       
end
