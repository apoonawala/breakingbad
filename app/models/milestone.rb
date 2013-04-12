class Milestone < ActiveRecord::Base
  attr_accessible :name, :ms_date, :plan_id

  validates_presence_of :name
  validates_presence_of :ms_date
  validates_presence_of :plan_id


  belongs_to :plan

end
