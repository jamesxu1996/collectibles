class Listing < ApplicationRecord
    belongs_to :category
    belongs_to :user
    
# sets conditions new, almost new, used, well loved
    enum condition: {brand_new: 1, almost_new: 2, used: 3, well_loved: 4}

end
