require "application_system_test_case"

class IntakeNotesTest < ApplicationSystemTestCase
  setup do
    @intake_note = intake_notes(:one)
  end

  test "visiting the index" do
    visit intake_notes_url
    assert_selector "h1", text: "Intake Notes"
  end

  test "creating a Intake note" do
    visit intake_notes_url
    click_on "New Intake Note"

    fill_in "Background", with: @intake_note.background
    fill_in "Current mental status", with: @intake_note.current_mental_status
    fill_in "Date", with: @intake_note.date
    fill_in "Diagnosis", with: @intake_note.diagnosis
    fill_in "Note type", with: @intake_note.note_type
    fill_in "Patient", with: @intake_note.patient_id
    fill_in "Presenting problem", with: @intake_note.presenting_problem
    fill_in "Safety issues", with: @intake_note.safety_issues
    fill_in "Time", with: @intake_note.time
    fill_in "User", with: @intake_note.user_id
    click_on "Create Intake note"

    assert_text "Intake note was successfully created"
    click_on "Back"
  end

  test "updating a Intake note" do
    visit intake_notes_url
    click_on "Edit", match: :first

    fill_in "Background", with: @intake_note.background
    fill_in "Current mental status", with: @intake_note.current_mental_status
    fill_in "Date", with: @intake_note.date
    fill_in "Diagnosis", with: @intake_note.diagnosis
    fill_in "Note type", with: @intake_note.note_type
    fill_in "Patient", with: @intake_note.patient_id
    fill_in "Presenting problem", with: @intake_note.presenting_problem
    fill_in "Safety issues", with: @intake_note.safety_issues
    fill_in "Time", with: @intake_note.time
    fill_in "User", with: @intake_note.user_id
    click_on "Update Intake note"

    assert_text "Intake note was successfully updated"
    click_on "Back"
  end

  test "destroying a Intake note" do
    visit intake_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intake note was successfully destroyed"
  end
end
