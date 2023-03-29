require "application_system_test_case"

class RepartmentsTest < ApplicationSystemTestCase
  setup do
    @repartment = repartments(:one)
  end

  test "visiting the index" do
    visit repartments_url
    assert_selector "h1", text: "Repartments"
  end

  test "should create repartment" do
    visit repartments_url
    click_on "New repartment"

    fill_in "Block", with: @repartment.block
    fill_in "Clinic", with: @repartment.clinic_id
    fill_in "Name", with: @repartment.name
    fill_in "Repartment", with: @repartment.repartment_id
    click_on "Create Repartment"

    assert_text "Repartment was successfully created"
    click_on "Back"
  end

  test "should update Repartment" do
    visit repartment_url(@repartment)
    click_on "Edit this repartment", match: :first

    fill_in "Block", with: @repartment.block
    fill_in "Clinic", with: @repartment.clinic_id
    fill_in "Name", with: @repartment.name
    fill_in "Repartment", with: @repartment.repartment_id
    click_on "Update Repartment"

    assert_text "Repartment was successfully updated"
    click_on "Back"
  end

  test "should destroy Repartment" do
    visit repartment_url(@repartment)
    click_on "Destroy this repartment", match: :first

    assert_text "Repartment was successfully destroyed"
  end
end
