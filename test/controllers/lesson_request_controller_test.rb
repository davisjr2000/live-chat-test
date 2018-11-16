require 'test_helper'

class LessonRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lesson_request_new_url
    assert_response :success
  end

  test "should get create" do
    get lesson_request_create_url
    assert_response :success
  end

  test "should get show" do
    get lesson_request_show_url
    assert_response :success
  end

  test "should get index" do
    get lesson_request_index_url
    assert_response :success
  end

  test "should get destroy" do
    get lesson_request_destroy_url
    assert_response :success
  end

end
