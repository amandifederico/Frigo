class Animal < ApplicationRecord
  belongs_to :animal_type
  def to_s
    description
  end
end
