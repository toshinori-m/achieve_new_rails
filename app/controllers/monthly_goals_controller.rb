class MonthlyGoalsController < ApplicationController

  def new
    @monthly_goals = MonthlyGoal.new
  end

  def create
    @monthly_goals = MonthlyGoal.new(monthly_goals_params)
    @monthly_goals.user_id = current_user.id
    if @monthly_goals.save
      redirect_to  root_path
    else
      render :new
    end
  end

  def index
    @monthly_goals = MonthlyGoal.all
  end
  
  def show
    @monthly_goals = MonthlyGoal.all
  end

  private
  def monthly_goals_params
    params.require(:monthly_goal).permit(:content)
  end
end