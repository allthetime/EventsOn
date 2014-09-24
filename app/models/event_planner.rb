class EventPlanner < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :salt, presence: true


  has_many :comments
  has_many :reviews
  has_many :bookmarks
  has_many :events

end