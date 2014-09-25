FactoryGirl.define do
  factory :event_planner do
    name          Faker::Name.name
    password      "7a37b85c8918eac19a9089c0fa5a2ab4dce3f90528dcdeec108b23ddf3607b99"
    salt          "salt"
    email          Faker::Internet.email
    phone_number   Faker::PhoneNumber.phone_number
    avatar_url     "http://imgs.xkcd.com/comics/im_so_random.png"
  end
end



# FactoryGirl.create :event_planner


