class LotDetail < ApplicationRecord
  belongs_to :lot
  belongs_to :animal

  validates :id, uniqueness: true

end
