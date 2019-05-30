require "application_system_test_case"

class EmergencyContactsTest < ApplicationSystemTestCase
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "visiting the index" do
    visit emergency_contacts_url
    assert_selector "h1", text: "Emergency Contacts"
  end

  test "creating a Emergency contact" do
    visit emergency_contacts_url
    click_on "New Emergency Contact"

    fill_in "Address line 1", with: @emergency_contact.address_line_1
    fill_in "Address line 2", with: @emergency_contact.address_line_2
    fill_in "City", with: @emergency_contact.city
    fill_in "Email", with: @emergency_contact.email
    fill_in "First name", with: @emergency_contact.first_name
    fill_in "Last name", with: @emergency_contact.last_name
    fill_in "Note", with: @emergency_contact.note
    fill_in "Phone1", with: @emergency_contact.phone1
    fill_in "Phone2", with: @emergency_contact.phone2
    fill_in "Relationship", with: @emergency_contact.relationship
    fill_in "State", with: @emergency_contact.state
    fill_in "Zipcode", with: @emergency_contact.zipcode
    click_on "Create Emergency contact"

    assert_text "Emergency contact was successfully created"
    click_on "Back"
  end

  test "updating a Emergency contact" do
    visit emergency_contacts_url
    click_on "Edit", match: :first

    fill_in "Address line 1", with: @emergency_contact.address_line_1
    fill_in "Address line 2", with: @emergency_contact.address_line_2
    fill_in "City", with: @emergency_contact.city
    fill_in "Email", with: @emergency_contact.email
    fill_in "First name", with: @emergency_contact.first_name
    fill_in "Last name", with: @emergency_contact.last_name
    fill_in "Note", with: @emergency_contact.note
    fill_in "Phone1", with: @emergency_contact.phone1
    fill_in "Phone2", with: @emergency_contact.phone2
    fill_in "Relationship", with: @emergency_contact.relationship
    fill_in "State", with: @emergency_contact.state
    fill_in "Zipcode", with: @emergency_contact.zipcode
    click_on "Update Emergency contact"

    assert_text "Emergency contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Emergency contact" do
    visit emergency_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emergency contact was successfully destroyed"
  end
end
