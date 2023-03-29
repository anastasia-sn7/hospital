require "test_helper"

class ClinicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clinic_index_url
    assert_response :success
  end

  test "should get create" do
    get clinic_create_url
    assert_response :success
  end

  test "should get update" do
    get clinic_update_url
    assert_response :success
  end

  test "should get delete" do
    get clinic_delete_url
    assert_response :success
  end
end
