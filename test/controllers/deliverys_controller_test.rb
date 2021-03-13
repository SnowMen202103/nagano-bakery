require 'test_helper'

class DeliverysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deliverys_index_url
    assert_response :success
  end

  test "should get edit" do
    get deliverys_edit_url
    assert_response :success
  end

  test "should get update" do
    get deliverys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get deliverys_destroy_url
    assert_response :success
  end

end
