class HabitsController < ApplicationController

  def index
    if user_signed_in?
      @habits = Habit.all
    else
      redirect_to new_user_session_url
    end
  end

  def new
   @habit=Habit.new
  end

  def create
    @habit = Habit.new(params[:habit])

    respond_to do |format|
      if @habit.save

        format.html { redirect_to habits_url, notice: 'Habit was successfully created.' }
        format.json { render json: @habit, status: :created, location: @habit }
      else
        format.html { render action: "new" }
        format.json { render json: @habit.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @habit= Habit.find_by_id(params[:id])
  end

  def edit
    @habit= Habit.find_by_id(params[:id])
  end

  def update
     @habit = Habit.find(params[:id])

    respond_to do |format|
      if @habit.update_attributes(params[:habit])
        format.html { redirect_to @habit, notice: 'Habit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @habit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy

    respond_to do |format|
      format.html { redirect_to habits_url }
      format.json { head :no_content }
    end
  end

end
