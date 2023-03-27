require "test_helper"

class MedcardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medcard_index_url
    assert_response :success
  end

  test "should get create" do
    get medcard_create_url
    assert_response :success
  end

  test "should get update" do
    get medcard_update_url
    assert_response :success
  end
end
