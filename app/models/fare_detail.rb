class FareDetail < ActiveRecord::Base
  belongs_to :departure
  belongs_to :airline
  belongs_to :airline_class
  belongs_to :destination

  validates_presence_of :fare
  validates_presence_of :from_date
  validates_presence_of :to_date

end
