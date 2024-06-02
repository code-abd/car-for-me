# spec/models/vehicle_spec.rb
require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  describe 'associations' do
    it { should belong_to(:user).optional }
  end

  describe 'enums' do
    it 'defines vehicle_type enum' do
      expect(Vehicle.vehicle_types).to include('car', 'bike', 'truck', 'bus')
    end

    it 'defines engine_type enum' do
      expect(Vehicle.engine_types).to include('electric', 'diesel', 'petrol', 'hybrid')
    end
  end
end
