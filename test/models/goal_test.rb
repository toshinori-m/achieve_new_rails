require 'test_helper'

class GoalTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @goal = Goal.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @goal.valid?
  end

  test "user id should be present" do
    @goal.user_id = nil
    assert_not @goal.valid?
  end

  test "content should be present" do
    @goal.content = "   "
    assert_not @goal.valid?
  end

  test "content should be at most 140 characters" do
    @goal.content = "a" * 141
    assert_not @goal.valid?
  end
end