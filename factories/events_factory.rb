FactoryGirl.define do
  factory :event do
    name          Faker::Company.name
    date         Faker::Business.credit_card_expiry_date
    description      "description goes here"
    picture_url    "http://imgs.xkcd.com/comics/im_so_random.png"
    link_url         'http://google.ca'
    event_planner_id  1
    venue_id          1
  end
end
# Event(id: integer, 
#   name: string, 
#   date: datetime, 
#   description: string, 
#   picture_url: string, 
#   link_url: string, 
#   event_planner_id: integer, 
#   created_at: datetime, 
#   updated_at: datetime, 
#   venue_id: integer)
