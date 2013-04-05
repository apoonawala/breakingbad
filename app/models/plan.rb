class Plan < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date, :habit_id

  validates_presence_of :name
  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :habit_id


  belongs_to :habit

end
