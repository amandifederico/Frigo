class User < ApplicationRecord
 	rolify
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	def admin?
		has_role?(:admin)
	end

	def A?
		has_role?(:A)
	end
	
	def B?
		has_role?(:B)
	end

	def C?
		has_role?(:C)
	end




end
