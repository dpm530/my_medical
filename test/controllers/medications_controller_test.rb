require 'test_helper'

class MedicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medication = medications(:one)
  end

  test "should get index" do
    get medications_url
    assert_response :success
  end

  test "should get new" do
    get new_medication_url
    assert_response :success
  end

  test "should create medication" do
    assert_difference('Medication.count') do
      post medications_url, params: { medication: { began_on: @medication.began_on, dosage: @medication.dosage, drug_name: @medication.drug_name, frequency: @medication.frequency, note: @medication.note, reason_taking: @medication.reason_taking, side_effects: @medication.side_effects } }
    end

    assert_redirected_to medication_url(Medication.last)
  end

  test "should show medication" do
    get medication_url(@medication)
    assert_response :success
  end

  test "should get edit" do
    get edit_medication_url(@medication)
    assert_response :success
  end

  test "should update medication" do
    patch medication_url(@medication), params: { medication: { began_on: @medication.began_on, dosage: @medication.dosage, drug_name: @medication.drug_name, frequency: @medication.frequency, note: @medication.note, reason_taking: @medication.reason_taking, side_effects: @medication.side_effects } }
    assert_redirected_to medication_url(@medication)
  end

  test "should destroy medication" do
    assert_difference('Medication.count', -1) do
      delete medication_url(@medication)
    end

    assert_redirected_to medications_url
  end
end
