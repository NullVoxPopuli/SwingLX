class Event < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :musics
  has_and_belongs_to_many :venues
  has_and_belongs_to_many :instructors 
  
  has_attached_file :header
  
  validates_presence_of :name
  validates_presence_of :city
  validates_presence_of :state
  
end
