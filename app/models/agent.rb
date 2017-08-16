class Agent < ApplicationRecord
  belongs_to :position
  validates :name, :presence => true, :length => { :minimum => 4 }
  validates :last_name, :presence => true, :length => { :minimum => 5 }
  validates :dni, :presence => true

  	def to_s
		last_name
	end
end
