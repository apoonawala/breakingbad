class Habit < ActiveRecord::Base
  attr_accessible :name, :description, :category
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :category

  has_many :plans

end
