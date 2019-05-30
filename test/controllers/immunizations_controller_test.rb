require 'test_helper'

class ImmunizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @immunization = immunizations(:one)
  end

  test "should get index" do
    get immunizations_url
    assert_response :success
  end

  test "should get new" do
    get new_immunization_url
    assert_response :success
  end

  test "should create immunization" do
    assert_difference('Immunization.count') do
      post immunizations_url, params: { immunization: { administered_by: @immunization.administered_by, dosage: @immunization.dosage, expired_on: @immunization.expired_on, manufacturer: @immunization.manufacturer, note: @immunization.note, patient_id: @immunization.patient_id, received_on: @immunization.received_on, vaccine: @immunization.vaccine } }
    end

    assert_redirected_to immunization_url(Immunization.last)
  end

  test "should show immunization" do
    get immunization_url(@immunization)
    assert_response :success
  end

  test "should get edit" do
    get edit_immunization_url(@immunization)
    assert_response :success
  end

  test "should update immunization" do
    patch immunization_url(@immunization), params: { immunization: { administered_by: @immunization.administered_by, dosage: @immunization.dosage, expired_on: @immunization.expired_on, manufacturer: @immunization.manufacturer, note: @immunization.note, patient_id: @immunization.patient_id, received_on: @immunization.received_on, vaccine: @immunization.vaccine } }
    assert_redirected_to immunization_url(@immunization)
  end

  test "should destroy immunization" do
    assert_difference('Immunization.count', -1) do
      delete immunization_url(@immunization)
    end

    assert_redirected_to immunizations_url
  end
end
