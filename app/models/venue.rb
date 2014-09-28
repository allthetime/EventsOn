class Venue < ActiveRecord::Base
  # validates :address, presence: true
  # validates :location, presence: true, uniqueness: true

  has_many :events

end
