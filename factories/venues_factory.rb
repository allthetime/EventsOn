
FactoryGirl.define do

types = ['music','dancing','market']

  factory :venue do
    name          Faker::Company.name
    address       Faker::Address.street_address + " " + Faker::Address.city
    latitude      49.281
    longitude     -123.108
    type          types.sample
  end
end

# Venue(id: integer, 
#   name: string, 
#   address: string, 
#   latitude: float, 
#   longitude: float, 
#   type: string, 
#   created_at: datetime, 
#   updated_at: datetime)