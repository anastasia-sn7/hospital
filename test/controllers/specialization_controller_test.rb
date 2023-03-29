require "test_helper"

class SpecializationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specialization_index_url
    assert_response :success
  end

  test "should get create" do
    get specialization_create_url
    assert_response :success
  end

  test "should get update" do
    get specialization_update_url
    assert_response :success
  end
end
