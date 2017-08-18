class Lot < ApplicationRecord
  has_many :lot_details, inverse_of: :lot
  accepts_nested_attributes_for :lot_details, :reject_if => proc { |attributes| attributes['animal_id'].blank? }
  belongs_to :turn
  belongs_to :producer

  def to_s
  	dte.to_s + " ( " + producer.to_s + " )"
  end

end
