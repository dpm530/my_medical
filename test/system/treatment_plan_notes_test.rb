require "application_system_test_case"

class TreatmentPlanNotesTest < ApplicationSystemTestCase
  setup do
    @treatment_plan_note = treatment_plan_notes(:one)
  end

  test "visiting the index" do
    visit treatment_plan_notes_url
    assert_selector "h1", text: "Treatment Plan Notes"
  end

  test "creating a Treatment plan note" do
    visit treatment_plan_notes_url
    click_on "New Treatment Plan Note"

    fill_in "Date", with: @treatment_plan_note.date
    fill_in "Diagnosis", with: @treatment_plan_note.diagnosis
    fill_in "Frequency", with: @treatment_plan_note.frequency
    fill_in "Note type", with: @treatment_plan_note.note_type
    fill_in "Objective", with: @treatment_plan_note.objective
    fill_in "Patient", with: @treatment_plan_note.patient_id
    fill_in "Presenting problem", with: @treatment_plan_note.presenting_problem
    fill_in "Time", with: @treatment_plan_note.time
    fill_in "Treatment goals", with: @treatment_plan_note.treatment_goals
    fill_in "User", with: @treatment_plan_note.user_id
    click_on "Create Treatment plan note"

    assert_text "Treatment plan note was successfully created"
    click_on "Back"
  end

  test "updating a Treatment plan note" do
    visit treatment_plan_notes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @treatment_plan_note.date
    fill_in "Diagnosis", with: @treatment_plan_note.diagnosis
    fill_in "Frequency", with: @treatment_plan_note.frequency
    fill_in "Note type", with: @treatment_plan_note.note_type
    fill_in "Objective", with: @treatment_plan_note.objective
    fill_in "Patient", with: @treatment_plan_note.patient_id
    fill_in "Presenting problem", with: @treatment_plan_note.presenting_problem
    fill_in "Time", with: @treatment_plan_note.time
    fill_in "Treatment goals", with: @treatment_plan_note.treatment_goals
    fill_in "User", with: @treatment_plan_note.user_id
    click_on "Update Treatment plan note"

    assert_text "Treatment plan note was successfully updated"
    click_on "Back"
  end

  test "destroying a Treatment plan note" do
    visit treatment_plan_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Treatment plan note was successfully destroyed"
  end
end
