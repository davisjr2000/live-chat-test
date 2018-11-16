require 'test_helper'

class SenseiControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sensei_new_url
    assert_response :success
  end

  test "should get create" do
    get sensei_create_url
    assert_response :success
  end

  test "should get index" do
    get sensei_index_url
    assert_response :success
  end

  test "should get show" do
    get sensei_show_url
    assert_response :success
  end

end
