require "test_helper"

class MedCertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @med_certificate = med_certificates(:one)
  end

  test "should get index" do
    get med_certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_med_certificate_url
    assert_response :success
  end

  test "should create med_certificate" do
    assert_difference("MedCertificate.count") do
      post med_certificates_url, params: { med_certificate: { doctor_id: @med_certificate.doctor_id, pacient_id: @med_certificate.pacient_id } }
    end

    assert_redirected_to med_certificate_url(MedCertificate.last)
  end

  test "should show med_certificate" do
    get med_certificate_url(@med_certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_med_certificate_url(@med_certificate)
    assert_response :success
  end

  test "should update med_certificate" do
    patch med_certificate_url(@med_certificate), params: { med_certificate: { doctor_id: @med_certificate.doctor_id, pacient_id: @med_certificate.pacient_id } }
    assert_redirected_to med_certificate_url(@med_certificate)
  end

  test "should destroy med_certificate" do
    assert_difference("MedCertificate.count", -1) do
      delete med_certificate_url(@med_certificate)
    end

    assert_redirected_to med_certificates_url
  end
end
