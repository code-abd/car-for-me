require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { Fabricate.build(:user) }

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without an email' do
      user.email = nil
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is not valid with a duplicate email' do
      Fabricate(:user, email: user.email)
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("has already been taken")
    end

    it 'is not valid with a duplicate phone number' do
      Fabricate(:user, phone_number: user.phone_number)
      expect(user).not_to be_valid
      expect(user.errors[:phone_number]).to include("has already been taken")
    end
  end
end
