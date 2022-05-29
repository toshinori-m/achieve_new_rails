class StaticPagesController < ApplicationController
  def home
    @goal = Goal.all
    @threemonths_goals = ThreemonthsGoal
    .where(id: (ThreemonthsGoal.group(:quarter).select('max(id)')))
    .order('id': :asc)
    @monthly_goals = MonthlyGoal.all.order(id: "DESC").limit(1)
  end
  
  def goal
  end

  def threemonths_goal
  end

  def monthly_goal
  end

  def report
  end

  def training_menu
  end

  def participating_room
  end

  def like
  end

  def participationg_room_user
  end

  def message
  end
end
