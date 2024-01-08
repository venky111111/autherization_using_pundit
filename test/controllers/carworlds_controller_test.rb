require "test_helper"

class CarworldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carworlds_index_url
    assert_response :success
  end

  test "should get show" do
    get carworlds_show_url
    assert_response :success
  end

  test "should get new" do
    get carworlds_new_url
    assert_response :success
  end

  test "should get edit" do
    get carworlds_edit_url
    assert_response :success
  end
end
