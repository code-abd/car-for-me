class User < ApplicationRecord
	# Association
	has_many :vehicles, dependent: :destroy
	
	# validations
	validates :email, presence: true, uniqueness: true
	validates :phone_number, uniqueness: true
end