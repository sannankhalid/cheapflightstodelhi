class Destination < ActiveRecord::Base
  has_one :destination_photo, :dependent => :destroy
  belongs_to :city
  has_many :enquiry_details, :dependent => :destroy
  has_many :fare_details, :dependent => :destroy

  validates_presence_of :meta_keywords
  validates_presence_of :meta_description
  validates_presence_of :body_text
end
