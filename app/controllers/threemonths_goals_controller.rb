class ThreemonthsGoalsController < ApplicationController
  
  def new
    @form = Form::ThreemonthsGoalCollection.new
  end

  def create
    quarter_0 = ThreemonthsGoal.new(content:params[:form_threemonths_goal_collection][:content_1], quarter: 0,user_id: current_user.id)
    quarter_1 = ThreemonthsGoal.new(content:params[:form_threemonths_goal_collection][:content_2], quarter: 1,user_id: current_user.id)
    quarter_2 = ThreemonthsGoal.new(content:params[:form_threemonths_goal_collection][:content_3], quarter: 2,user_id: current_user.id)
    quarter_3 = ThreemonthsGoal.new(content:params[:form_threemonths_goal_collection][:content_4], quarter: 3,user_id: current_user.id)
    #@form = Form::ThreemonthsGoalCollection.new(threemonths_goal_collection_params)

    #if @form.save
    if quarter_0.save && quarter_1.save && quarter_2.save && quarter_3.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def index
    @threemonths_goals = ThreemonthsGoal.all
  end
  
  def show
    @threemonths_goals = ThreemonthsGoal.all
  end

  private
  def threemonths_goal_collection_params
    params
      .require(:form_threemonths_goal_collection)
      .permit(:content_1,:content_2,:content_3,:content_4)
  end
end
