class Lot < ApplicationRecord
  has_many :lot_details, inverse_of: :lot
  accepts_nested_attributes_for :lot_details
  belongs_to :turn
  belongs_to :producer

  def to_s
    senasa
  end

end
