class SubProduct < ApplicationRecord
  has_many :sub_product_details, inverse_of: :sub_product
  accepts_nested_attributes_for :sub_product_details
  belongs_to :lot
end
