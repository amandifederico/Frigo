class SubProduct < ApplicationRecord
  has_many :sub_product_details, inverse_of: :sub_product
  accepts_nested_attributes_for :sub_product_details, reject_if: :all_blank, allow_destroy: true
  belongs_to :lot

  
end
