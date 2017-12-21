class Animal < ApplicationRecord
  belongs_to :animal_type

  validates :description, :presence => true
  validates :initials, :presence => true
  def to_s
    description+" - "+initials
  end
end
