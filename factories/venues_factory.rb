
FactoryGirl.define do

  factory :venue do
    name          Faker::Company.name
    address       Faker::Address.street_address + " " + Faker::Address.city
    latitude      49.281
    longitude     -123.108
  end
end


# FactoryGirl.create :venue