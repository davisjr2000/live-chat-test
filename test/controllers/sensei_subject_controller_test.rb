require 'test_helper'

class SenseiSubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sensei_subject_new_url
    assert_response :success
  end

  test "should get create" do
    get sensei_subject_create_url
    assert_response :success
  end

  test "should get index" do
    get sensei_subject_index_url
    assert_response :success
  end

  test "should get destroy" do
    get sensei_subject_destroy_url
    assert_response :success
  end

end
