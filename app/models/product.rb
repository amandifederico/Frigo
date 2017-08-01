class Product < ApplicationRecord
  belongs_to :lot
  
  has_many :product_details, :dependent => :destroy
  accepts_nested_attributes_for :product_details

end
