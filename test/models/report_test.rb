require "test_helper"

class ReportTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @reports = Report.new(report: "Lorem ipsum", user_id: @user.id)
  end
end