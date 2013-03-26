class HabitsController < ApplicationController

  def index
    @habits = Habit.all
  end

  def new
   @habit=Habit.new
  end

  def create
  end

end
