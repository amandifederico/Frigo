class Turn < ApplicationRecord
  has_many :turn_details, inverse_of: :turn
  accepts_nested_attributes_for :turn_details, :reject_if => proc { |attributes| attributes['agent_id'].blank? }



  def to_s
    date
  end
end
