class User < ApplicationRecord
	# validations
	validates :email, presence: true, uniqueness: true
	validates :phone_number, uniqueness: true
end