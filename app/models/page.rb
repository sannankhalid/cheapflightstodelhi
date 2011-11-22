class Page < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :content
  validates_uniqueness_of :name
end
