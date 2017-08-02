class Turn < ApplicationRecord
  has_many :turn_details, inverse_of: :turn
  accepts_nested_attributes_for :turn_details
  def to_s
    date
  end
end
