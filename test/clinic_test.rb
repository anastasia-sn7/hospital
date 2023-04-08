require "test_helper"

class ClinicTest < ActiveSupport::TestCase
  test "should get index" do
    get clinic_url
    assert_response :success
  end

  test "should create a new clinic" do
    assert_difference("Clinic.count") do
      post clinic_url, params: { name: "Test", address: "Testovyi", number: 111, created_at: Date.today.to_s, updated_at: Date.today.to_s, year: 2020 }
    end
    assert_redirected_to clinic_path(Clinic.last)
    assert_equal "success", Clinic.last.name
  end

  test "should update clinic" do
    clinic = clinics(:one)

    patch clinic_url(clinic), params: { name: "Test", address: "Testovyi", number: 111, created_at: Date.today.to_s, updated_at: Date.today.to_s, year: 2020 }

    assert_redirected_to clinic_path(clinic)
    clinic.reload
    assert_equal "success", clinic.to_s
  end

end
