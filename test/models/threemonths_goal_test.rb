require "test_helper"

class ThreemonthsGoalTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @threemonths_goals = ThreemonthsGoal.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @threemonths_goals.valid?
  end

  test "user id should be present" do
    @threemonths_goals.user_id = nil
    assert_not @threemonths_goals.valid?
  end

  test "content should be present" do
    @threemonths_goals.content = "   "
    assert_not @threemonths_goals.valid?
  end

  test "content should be at most 140 characters" do
    @threemonths_goals.content = "a" * 141
    assert_not @threemonths_goals.valid?
  end
end