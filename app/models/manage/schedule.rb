class Schedule < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_one :venue
  
  serialize :music
end
