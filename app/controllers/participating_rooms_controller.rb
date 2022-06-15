class ParticipatingRoomsController < ApplicationController
  def show
    @report = Report.order(id: "DESC").limit(1)
  end

  def index
    @reports = Report.all
  end

  private
  def reports_params
    params.require(:report).permit(:location, :time, :condition, :intensity, :point, :report, :datepicker_value)
  end
end
