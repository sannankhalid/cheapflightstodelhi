class Departure < ActiveRecord::Base
  belongs_to :city
  has_many :fare_details
end
