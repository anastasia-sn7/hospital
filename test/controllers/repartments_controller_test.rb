require "test_helper"

class RepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repartment = repartments(:one)
  end

  test "should get index" do
    get repartments_url
    assert_response :success
  end

  test "should get new" do
    get new_repartment_url
    assert_response :success
  end

  test "should create repartment" do
    assert_difference("Repartment.count") do
      post repartments_url, params: { repartment: { block: @repartment.block, clinic_id: @repartment.clinic_id, name: @repartment.name, repartment_id: @repartment.repartment_id } }
    end

    assert_redirected_to repartment_url(Repartment.last)
  end

  test "should show repartment" do
    get repartment_url(@repartment)
    assert_response :success
  end

  test "should get edit" do
    get edit_repartment_url(@repartment)
    assert_response :success
  end

  test "should update repartment" do
    patch repartment_url(@repartment), params: { repartment: { block: @repartment.block, clinic_id: @repartment.clinic_id, name: @repartment.name, repartment_id: @repartment.repartment_id } }
    assert_redirected_to repartment_url(@repartment)
  end

  test "should destroy repartment" do
    assert_difference("Repartment.count", -1) do
      delete repartment_url(@repartment)
    end

    assert_redirected_to repartments_url
  end
end
