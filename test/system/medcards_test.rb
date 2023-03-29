require "application_system_test_case"

class MedcardsTest < ApplicationSystemTestCase
  setup do
    @medcard = medcards(:one)
  end

  test "visiting the index" do
    visit medcards_url
    assert_selector "h1", text: "Medcards"
  end

  test "should create medcard" do
    visit medcards_url
    click_on "New medcard"

    fill_in "Clinic", with: @medcard.clinic_id
    fill_in "Medcard", with: @medcard.medcard_id
    fill_in "Name", with: @medcard.name
    fill_in "Pacient", with: @medcard.pacient_id
    fill_in "Year", with: @medcard.year
    click_on "Create Medcard"

    assert_text "Medcard was successfully created"
    click_on "Back"
  end

  test "should update Medcard" do
    visit medcard_url(@medcard)
    click_on "Edit this medcard", match: :first

    fill_in "Clinic", with: @medcard.clinic_id
    fill_in "Medcard", with: @medcard.medcard_id
    fill_in "Name", with: @medcard.name
    fill_in "Pacient", with: @medcard.pacient_id
    fill_in "Year", with: @medcard.year
    click_on "Update Medcard"

    assert_text "Medcard was successfully updated"
    click_on "Back"
  end

  test "should destroy Medcard" do
    visit medcard_url(@medcard)
    click_on "Destroy this medcard", match: :first

    assert_text "Medcard was successfully destroyed"
  end
end
