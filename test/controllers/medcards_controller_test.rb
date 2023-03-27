require "test_helper"

class MedcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medcard = medcards(:one)
  end

  test "should get index" do
    get medcards_url
    assert_response :success
  end

  test "should get new" do
    get new_medcard_url
    assert_response :success
  end

  test "should create medcard" do
    assert_difference("Medcard.count") do
      post medcards_url, params: { medcard: { clinic_id: @medcard.clinic_id, medcard_id: @medcard.medcard_id, name: @medcard.name, pacient_id: @medcard.pacient_id, year: @medcard.year } }
    end

    assert_redirected_to medcard_url(Medcard.last)
  end

  test "should show medcard" do
    get medcard_url(@medcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_medcard_url(@medcard)
    assert_response :success
  end

  test "should update medcard" do
    patch medcard_url(@medcard), params: { medcard: { clinic_id: @medcard.clinic_id, medcard_id: @medcard.medcard_id, name: @medcard.name, pacient_id: @medcard.pacient_id, year: @medcard.year } }
    assert_redirected_to medcard_url(@medcard)
  end

  test "should destroy medcard" do
    assert_difference("Medcard.count", -1) do
      delete medcard_url(@medcard)
    end

    assert_redirected_to medcards_url
  end
end
