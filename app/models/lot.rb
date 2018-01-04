class Lot < ApplicationRecord
  has_many :lot_details, inverse_of: :lot
  #has_many :products, inverse_of: :lot, autosave: true
  accepts_nested_attributes_for :lot_details, :reject_if => proc { |attributes| attributes['animal_id'].blank? }
  belongs_to :turn
  belongs_to :producer
  belongs_to :city
  belongs_to :transport
  
  validates :producer, presence: true
  #after_initialize :init_products

  def to_s
  	dte.to_s + " ( " + producer.to_s + " )"
  end

  #def init_products
  #  if new_record?
  #    prod = Product.new
  #    prod.lot_id = id
  #    prod.description = "asasdasda"
  #    prod.save
  #  end
  #end

end
