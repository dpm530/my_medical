require 'test_helper'

class HealthInsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_insurance = health_insurances(:one)
  end

  test "should get index" do
    get health_insurances_url
    assert_response :success
  end

  test "should get new" do
    get new_health_insurance_url
    assert_response :success
  end

  test "should create health_insurance" do
    assert_difference('HealthInsurance.count') do
      post health_insurances_url, params: { health_insurance: {  } }
    end

    assert_redirected_to health_insurance_url(HealthInsurance.last)
  end

  test "should show health_insurance" do
    get health_insurance_url(@health_insurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_insurance_url(@health_insurance)
    assert_response :success
  end

  test "should update health_insurance" do
    patch health_insurance_url(@health_insurance), params: { health_insurance: {  } }
    assert_redirected_to health_insurance_url(@health_insurance)
  end

  test "should destroy health_insurance" do
    assert_difference('HealthInsurance.count', -1) do
      delete health_insurance_url(@health_insurance)
    end

    assert_redirected_to health_insurances_url
  end
end
