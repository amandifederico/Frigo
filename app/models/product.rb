class Product < ApplicationRecord
	has_many :product_details, inverse_of: :product
	accepts_nested_attributes_for :product_details
	belongs_to :lot

	def to_s
		description
	end
end
