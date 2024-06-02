# seeds.rb
require 'faker'

# Create users

user1 = User.create!(
  email: Faker::Internet.email,
  password: 'password1',
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  phone_number: Faker::PhoneNumber.phone_number,
  main_address: Faker::Address.street_address,
  alt_address: Faker::Address.secondary_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  country: Faker::Address.country,
  zip: Faker::Address.zip_code
)

user2 = User.create!(
  email: Faker::Internet.email,
  password: 'password2',
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  phone_number: Faker::PhoneNumber.phone_number,
  main_address: Faker::Address.street_address,
  alt_address: Faker::Address.secondary_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  country: Faker::Address.country,
  zip: Faker::Address.zip_code
)


# Create vehicles associated with users
user1.vehicles.create!(
  vehicle_type: 'car',
  engine_type: 'electric',
  horse_power: 300,
  torque: 350,
  seating_capacity: 5,
  price: 45000.00
)

user1.vehicles.create!(
  vehicle_type: 'bike',
  engine_type: 'petrol',
  horse_power: 200,
  torque: 250,
  seating_capacity: 2,
  price: 35000.00
)

user2.vehicles.create!(
  vehicle_type: 'car',
  engine_type: 'diesel',
  horse_power: 400,
  torque: 500,
  seating_capacity: 4,
  price: 55000.00
)

puts "Seed data created successfully."
