class AnimalType < ApplicationRecord
  def to_s
    description
  end
end
