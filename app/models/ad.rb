class Ad < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle

  # Validations
  validates :vehicle_id, uniqueness: true
end
