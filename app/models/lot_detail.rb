class LotDetail < ApplicationRecord
  belongs_to :lot
  belongs_to :animal
end
