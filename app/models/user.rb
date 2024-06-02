class User < ApplicationRecord
	# Association
	has_many :ads, dependent: :destroy
	has_many :vehicles, through: :ads, dependent: :destroy

	# validations
	validates :email, presence: true, uniqueness: true
	validates :phone_number, uniqueness: true
end