class PlansController < ApplicationController

   def new
   @plan=Plan.new
  end

  def create
    @plan= Plan.new(params[:plan])

    respond_to do |format|
      if @plan.save

        format.html { redirect_to habits_url}
        # format.json { render json: @habit, status: :created, location: @habit }
      else
        format.html { render action: "new" }
        # format.json { render json: @habit.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy

    respond_to do |format|
      format.html { redirect_to habits_url }
      format.json { head :no_content }
      end
  end


end
