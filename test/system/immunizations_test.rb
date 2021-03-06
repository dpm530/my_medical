require "application_system_test_case"

class ImmunizationsTest < ApplicationSystemTestCase
  setup do
    @immunization = immunizations(:one)
  end

  test "visiting the index" do
    visit immunizations_url
    assert_selector "h1", text: "Immunizations"
  end

  test "creating a Immunization" do
    visit immunizations_url
    click_on "New Immunization"

    fill_in "Administered by", with: @immunization.administered_by
    fill_in "Dosage", with: @immunization.dosage
    fill_in "Expired on", with: @immunization.expired_on
    fill_in "Manufacturer", with: @immunization.manufacturer
    fill_in "Note", with: @immunization.note
    fill_in "Patient", with: @immunization.patient_id
    fill_in "Received on", with: @immunization.received_on
    fill_in "Vaccine", with: @immunization.vaccine
    click_on "Create Immunization"

    assert_text "Immunization was successfully created"
    click_on "Back"
  end

  test "updating a Immunization" do
    visit immunizations_url
    click_on "Edit", match: :first

    fill_in "Administered by", with: @immunization.administered_by
    fill_in "Dosage", with: @immunization.dosage
    fill_in "Expired on", with: @immunization.expired_on
    fill_in "Manufacturer", with: @immunization.manufacturer
    fill_in "Note", with: @immunization.note
    fill_in "Patient", with: @immunization.patient_id
    fill_in "Received on", with: @immunization.received_on
    fill_in "Vaccine", with: @immunization.vaccine
    click_on "Update Immunization"

    assert_text "Immunization was successfully updated"
    click_on "Back"
  end

  test "destroying a Immunization" do
    visit immunizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Immunization was successfully destroyed"
  end
end
