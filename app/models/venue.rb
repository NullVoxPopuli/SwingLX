class Venue < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :events
  has_one :address
  
  has_attached_file :picture
end
