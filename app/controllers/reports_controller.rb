class ReportsController < ApplicationController

  def new
    @reports = Report.new
  end

  def create
    @reports = Report.new(reports_params)
    @reports.user_id = current_user.id
    if @reports.save
      redirect_to  root_path
    else
      render action: :new
    end
  end

  def index
    @reports = Report.all
  end
  
  def show
    @reports = Report.all
  end

  private
  def reports_params
    params.require(:report).permit(:location, :time, :condition, :intensity, :point, :report)
  end
end
