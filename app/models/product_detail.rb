class ProductDetail < ApplicationRecord
	belongs_to :product
	belongs_to :type
	belongs_to :animal
	validates :product, presence: true
	
end
