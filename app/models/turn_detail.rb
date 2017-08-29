class TurnDetail < ApplicationRecord
  belongs_to :turn
  belongs_to :agent
  belongs_to :place
  belongs_to :position

  #validates :agent_id, uniqueness: true
end
