class GoalController < ApplicationController

  def show
    @goal = @user.goal
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update(goal_params)
      redirect_to  root_path
    else
      render :edit
    end
  end

  private
  def goal_params
    params.require(:goal).permit(:content)
  end
end
