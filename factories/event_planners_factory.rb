# FactoryGirl.define do
#   factory :event_planner do
#     name          Faker::Name.name
#     password      encrypt("password","dog")
#     salt          "dog"
#     email          Faker::Internet.email
#     phone_number   Faker::PhoneNumber.phone_number
#     avatar_url     "http://imgs.xkcd.com/comics/im_so_random.png"
#   end
# end


  # def encrypt(password,salt)
  #   Digest::SHA256.hexdigest(password+salt)
  # end

# ventPlanner(
#   id: integer
#  name: string,
#  password: string,
#  salt: string,
#  email: string,
#  phone_number: string,
#  avatar_url: string,
#  created_at: datetime,
#  updated_at: datetime)


