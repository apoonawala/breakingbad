# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

habits = [{name: "Joe's Smoking Habit", description: "Help Joe quit smoking", category: "Smoking"},
          {name: "Mike's Drinking Habit", description: "Help Joe quit drinking", category: "Drinking"}]


habits.each do |habit|
  h=Habit.new
  h.name = habit[:name]
  h.description = habit[:description]
  h.category = habit[:category]
  h.save
end

joe = Habit.find_by_name("Joe's Smoking Habit")
mike = Habit.find_by_name("Mike's Drinking Habit")

plans = [{name: "Joe's 6 Month Smoking Plan", start_date: "1/1/2014".to_date, end_date: "7/1/2014".to_date, habit_id: joe.id},
         {name: "Mikes's 6 Month Drinking Plan", start_date: "1/1/2014".to_date, end_date: "7/1/2014".to_date, habit_id: mike.id}]


plans.each do |plan|
  p=Plan.new
  p.name = plan[:name]
  p.start_date = plan[:start_date]
  p.end_date = plan[:end_date]
  p.habit_id = plan[:habit_id]
  p.save
end
