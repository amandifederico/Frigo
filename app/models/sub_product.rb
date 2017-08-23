class SubProduct < ApplicationRecord
  has_many :sub_product_details, inverse_of: :sub_product
  accepts_nested_attributes_for :sub_product_details, :reject_if => proc { |attributes| attributes['weight'].blank? }
  belongs_to :lot
end
