class Vehicle < ApplicationRecord
  # Associations
  belongs_to :user, optional: true

  # Types
  enum vehicle_type: {
    car: 'car',
    bike: 'bike',
    truck: 'truck',
    bus: 'bus',
  }

  # engine types
  enum engine_type: {
    electric: 'electric',
    diesel: 'diesel',
    petrol: 'petrol',
    hybrid: 'hybrid',
  }
end
