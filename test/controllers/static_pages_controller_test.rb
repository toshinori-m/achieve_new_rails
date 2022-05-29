require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "achieve one's goal"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get goal" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get threemonths_goal" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get training_menu" do
    get training_menu_path
    assert_response :success
    assert_select "title", "Training_menu | #{@base_title}"
  end
end
