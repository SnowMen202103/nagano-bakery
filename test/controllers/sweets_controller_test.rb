require 'test_helper'

class SweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sweets_index_url
    assert_response :success
  end

  test "should get show" do
    get sweets_show_url
    assert_response :success
  end

  test "should get new" do
    get sweets_new_url
    assert_response :success
  end

  test "should get edit" do
    get sweets_edit_url
    assert_response :success
  end

end
