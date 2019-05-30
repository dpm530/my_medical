require 'test_helper'

class FamilyHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_history = family_histories(:one)
  end

  test "should get index" do
    get family_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_family_history_url
    assert_response :success
  end

  test "should create family_history" do
    assert_difference('FamilyHistory.count') do
      post family_histories_url, params: { family_history: { dob: @family_history.dob, dod: @family_history.dod, first_name: @family_history.first_name, last_name: @family_history.last_name, medical_history: @family_history.medical_history, patient_id: @family_history.patient_id, relationship: @family_history.relationship } }
    end

    assert_redirected_to family_history_url(FamilyHistory.last)
  end

  test "should show family_history" do
    get family_history_url(@family_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_history_url(@family_history)
    assert_response :success
  end

  test "should update family_history" do
    patch family_history_url(@family_history), params: { family_history: { dob: @family_history.dob, dod: @family_history.dod, first_name: @family_history.first_name, last_name: @family_history.last_name, medical_history: @family_history.medical_history, patient_id: @family_history.patient_id, relationship: @family_history.relationship } }
    assert_redirected_to family_history_url(@family_history)
  end

  test "should destroy family_history" do
    assert_difference('FamilyHistory.count', -1) do
      delete family_history_url(@family_history)
    end

    assert_redirected_to family_histories_url
  end
end
