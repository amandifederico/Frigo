class Product < ApplicationRecord
	has_many :product_details, inverse_of: :product
	accepts_nested_attributes_for :product_details, :reject_if => proc { |attributes| attributes['weight'].blank? }
	belongs_to :lot

	def to_s
		lot description
	end
end
