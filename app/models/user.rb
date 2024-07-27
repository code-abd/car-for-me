class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	# Association
	has_many :ads, dependent: :destroy
	has_many :vehicles, through: :ads, dependent: :destroy

	# validations
	validates :email, presence: true, uniqueness: true
	validates :phone_number, uniqueness: true
end