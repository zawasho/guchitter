require 'test_helper'

class GoodThingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get good_things_new_url
    assert_response :success
  end

  test "should get create" do
    get good_things_create_url
    assert_response :success
  end

  test "should get index" do
    get good_things_index_url
    assert_response :success
  end

  test "should get show" do
    get good_things_show_url
    assert_response :success
  end

  test "should get edit" do
    get good_things_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get good_things_destroy_url
    assert_response :success
  end

end
