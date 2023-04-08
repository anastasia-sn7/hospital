require "application_system_test_case"

class MedCertificatesTest < ApplicationSystemTestCase
  setup do
    @med_certificate = med_certificates(:one)
  end

  test "visiting the index" do
    visit med_certificates_url
    assert_selector "h1", text: "Med certificates"
  end

  test "should create med certificate" do
    visit med_certificates_url
    click_on "New med certificate"

    fill_in "Doctor", with: @med_certificate.doctor_id
    fill_in "Pacient", with: @med_certificate.pacient_id
    click_on "Create Med certificate"

    assert_text "Med certificate was successfully created"
    click_on "Back"
  end

  test "should update Med certificate" do
    visit med_certificate_url(@med_certificate)
    click_on "Edit this med certificate", match: :first

    fill_in "Doctor", with: @med_certificate.doctor_id
    fill_in "Pacient", with: @med_certificate.pacient_id
    click_on "Update Med certificate"

    assert_text "Med certificate was successfully updated"
    click_on "Back"
  end

  test "should destroy Med certificate" do
    visit med_certificate_url(@med_certificate)
    click_on "Destroy this med certificate", match: :first

    assert_text "Med certificate was successfully destroyed"
  end
end
