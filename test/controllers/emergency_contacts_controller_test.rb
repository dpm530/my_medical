require 'test_helper'

class EmergencyContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "should get index" do
    get emergency_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_emergency_contact_url
    assert_response :success
  end

  test "should create emergency_contact" do
    assert_difference('EmergencyContact.count') do
      post emergency_contacts_url, params: { emergency_contact: { address_line_1: @emergency_contact.address_line_1, address_line_2: @emergency_contact.address_line_2, city: @emergency_contact.city, email: @emergency_contact.email, first_name: @emergency_contact.first_name, last_name: @emergency_contact.last_name, note: @emergency_contact.note, phone1: @emergency_contact.phone1, phone2: @emergency_contact.phone2, relationship: @emergency_contact.relationship, state: @emergency_contact.state, zipcode: @emergency_contact.zipcode } }
    end

    assert_redirected_to emergency_contact_url(EmergencyContact.last)
  end

  test "should show emergency_contact" do
    get emergency_contact_url(@emergency_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_emergency_contact_url(@emergency_contact)
    assert_response :success
  end

  test "should update emergency_contact" do
    patch emergency_contact_url(@emergency_contact), params: { emergency_contact: { address_line_1: @emergency_contact.address_line_1, address_line_2: @emergency_contact.address_line_2, city: @emergency_contact.city, email: @emergency_contact.email, first_name: @emergency_contact.first_name, last_name: @emergency_contact.last_name, note: @emergency_contact.note, phone1: @emergency_contact.phone1, phone2: @emergency_contact.phone2, relationship: @emergency_contact.relationship, state: @emergency_contact.state, zipcode: @emergency_contact.zipcode } }
    assert_redirected_to emergency_contact_url(@emergency_contact)
  end

  test "should destroy emergency_contact" do
    assert_difference('EmergencyContact.count', -1) do
      delete emergency_contact_url(@emergency_contact)
    end

    assert_redirected_to emergency_contacts_url
  end
end
