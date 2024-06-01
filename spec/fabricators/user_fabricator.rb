# spec/fabricators/user_fabricator.rb
Fabricator(:user) do
  email { Faker::Internet.email }
  password { Faker::Internet.password }
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  phone_number { Faker::PhoneNumber.phone_number }
  main_address { Faker::Address.street_address }
  alt_address { Faker::Address.secondary_address }
  city { Faker::Address.city }
  state { Faker::Address.state }
  country { Faker::Address.country }
  zip { Faker::Address.zip }
end
