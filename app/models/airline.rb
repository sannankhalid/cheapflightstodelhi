class Airline < ActiveRecord::Base
  has_many :fare_details

  validates_presence_of :name
  validates_presence_of :code
  validates_uniqueness_of :name
  validates_uniqueness_of :code
end
