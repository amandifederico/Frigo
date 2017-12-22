class StaticPagesController < ApplicationController
	def production_line
		@products = Product.all
	end
end
