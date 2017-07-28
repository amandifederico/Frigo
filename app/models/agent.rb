class Agent < ApplicationRecord
  belongs_to :position
  validates :name, :presence => true, :length => { :minimum => 5 }

  	def to_s
		last_name
	end
end
