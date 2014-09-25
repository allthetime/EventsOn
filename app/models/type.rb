class Type < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

 has_many :event_types
  has_many :events, through:
  :event_types

end

# types = ['music','art','festival','market']

# types.each { |x| Type.create(name:x)}