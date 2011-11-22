class City < ActiveRecord::Base
  belongs_to :state
  has_one :departure
  has_many :destinations
end
