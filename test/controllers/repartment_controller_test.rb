require "test_helper"

class RepartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get repartment_index_url
    assert_response :success
  end

  test "should get create" do
    get repartment_create_url
    assert_response :success
  end

  test "should get update" do
    get repartment_update_url
    assert_response :success
  end
end
