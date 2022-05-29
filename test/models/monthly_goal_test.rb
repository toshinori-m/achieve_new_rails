require "test_helper"

class MonthlyGoalTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @monthly_goals = MonthlyGoal.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @monthly_goals.valid?
  end

  test "user id should be present" do
    @monthly_goals.user_id = nil
    assert_not @monthly_goals.valid?
  end

  test "content should be present" do
    @monthly_goals.content = "   "
    assert_not @monthly_goals.valid?
  end

  test "content should be at most 140 characters" do
    @monthly_goals.content = "a" * 141
    assert_not @monthly_goals.valid?
  end
end