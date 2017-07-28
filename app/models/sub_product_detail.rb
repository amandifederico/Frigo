class SubProductDetail < ApplicationRecord
  belongs_to :sub_product
  belongs_to :sub_product_type
end
