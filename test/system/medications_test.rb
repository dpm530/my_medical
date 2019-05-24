require "application_system_test_case"

class MedicationsTest < ApplicationSystemTestCase
  setup do
    @medication = medications(:one)
  end

  test "visiting the index" do
    visit medications_url
    assert_selector "h1", text: "Medications"
  end

  test "creating a Medication" do
    visit medications_url
    click_on "New Medication"

    fill_in "Began on", with: @medication.began_on
    fill_in "Dosage", with: @medication.dosage
    fill_in "Drug name", with: @medication.drug_name
    fill_in "Frequency", with: @medication.frequency
    fill_in "Note", with: @medication.note
    fill_in "Reason taking", with: @medication.reason_taking
    fill_in "Side effects", with: @medication.side_effects
    click_on "Create Medication"

    assert_text "Medication was successfully created"
    click_on "Back"
  end

  test "updating a Medication" do
    visit medications_url
    click_on "Edit", match: :first

    fill_in "Began on", with: @medication.began_on
    fill_in "Dosage", with: @medication.dosage
    fill_in "Drug name", with: @medication.drug_name
    fill_in "Frequency", with: @medication.frequency
    fill_in "Note", with: @medication.note
    fill_in "Reason taking", with: @medication.reason_taking
    fill_in "Side effects", with: @medication.side_effects
    click_on "Update Medication"

    assert_text "Medication was successfully updated"
    click_on "Back"
  end

  test "destroying a Medication" do
    visit medications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medication was successfully destroyed"
  end
end
