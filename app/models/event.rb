class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :venue_id, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :type_name, presence: true
  validates_associated :event_planner

  belongs_to :event_planner
  belongs_to :venue
  has_many :comments
  #has_many :event_types
  #has_many :types, through: :event_types

  scope :by_date, -> (date) { where('date = ?', date.to_date) if date && date != '' }
  scope :by_type, -> (type) { where('type_name = ?', type) if type && type != '' }

end