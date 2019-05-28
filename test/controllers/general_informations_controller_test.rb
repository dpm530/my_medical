require 'test_helper'

class GeneralInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general_information = general_informations(:one)
  end

  test "should get index" do
    get general_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_general_information_url
    assert_response :success
  end

  test "should create general_information" do
    assert_difference('GeneralInformation.count') do
      post general_informations_url, params: { general_information: {  } }
    end

    assert_redirected_to general_information_url(GeneralInformation.last)
  end

  test "should show general_information" do
    get general_information_url(@general_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_information_url(@general_information)
    assert_response :success
  end

  test "should update general_information" do
    patch general_information_url(@general_information), params: { general_information: {  } }
    assert_redirected_to general_information_url(@general_information)
  end

  test "should destroy general_information" do
    assert_difference('GeneralInformation.count', -1) do
      delete general_information_url(@general_information)
    end

    assert_redirected_to general_informations_url
  end
end
