class DestinationPhoto < ActiveRecord::Base
  belongs_to :destination

  has_attached_file :picture
end
