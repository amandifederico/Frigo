class Lot < ApplicationRecord
  belongs_to :turn
  belongs_to :producer

  def to_s
    senasa
  end

end
