require "application_system_test_case"

class DiagnosesTest < ApplicationSystemTestCase
  setup do
    @diagnosis = diagnoses(:one)
  end

  test "visiting the index" do
    visit diagnoses_url
    assert_selector "h1", text: "Diagnoses"
  end

  test "creating a Diagnosis" do
    visit diagnoses_url
    click_on "New Diagnosis"

    fill_in "Diagnosis", with: @diagnosis.diagnosis
    fill_in "Note", with: @diagnosis.note
    fill_in "Onset", with: @diagnosis.onset
    fill_in "Patient", with: @diagnosis.patient
    fill_in "Treatment", with: @diagnosis.treatment
    click_on "Create Diagnosis"

    assert_text "Diagnosis was successfully created"
    click_on "Back"
  end

  test "updating a Diagnosis" do
    visit diagnoses_url
    click_on "Edit", match: :first

    fill_in "Diagnosis", with: @diagnosis.diagnosis
    fill_in "Note", with: @diagnosis.note
    fill_in "Onset", with: @diagnosis.onset
    fill_in "Patient", with: @diagnosis.patient
    fill_in "Treatment", with: @diagnosis.treatment
    click_on "Update Diagnosis"

    assert_text "Diagnosis was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnosis" do
    visit diagnoses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnosis was successfully destroyed"
  end
end
