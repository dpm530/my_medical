require "application_system_test_case"

class ProgressNotesTest < ApplicationSystemTestCase
  setup do
    @progress_note = progress_notes(:one)
  end

  test "visiting the index" do
    visit progress_notes_url
    assert_selector "h1", text: "Progress Notes"
  end

  test "creating a Progress note" do
    visit progress_notes_url
    click_on "New Progress Note"

    fill_in "Date", with: @progress_note.date
    fill_in "Duration", with: @progress_note.duration
    fill_in "Dx", with: @progress_note.dx
    fill_in "Location", with: @progress_note.location
    fill_in "Mental status", with: @progress_note.mental_status
    fill_in "Patient", with: @progress_note.patient_id
    fill_in "Prognosis", with: @progress_note.prognosis
    fill_in "Progress note", with: @progress_note.progress_note
    fill_in "Progress to date", with: @progress_note.progress_to_date
    fill_in "Symptoms", with: @progress_note.symptoms
    fill_in "Time", with: @progress_note.time
    fill_in "Tx plan", with: @progress_note.tx_plan
    fill_in "User", with: @progress_note.user_id
    click_on "Create Progress note"

    assert_text "Progress note was successfully created"
    click_on "Back"
  end

  test "updating a Progress note" do
    visit progress_notes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @progress_note.date
    fill_in "Duration", with: @progress_note.duration
    fill_in "Dx", with: @progress_note.dx
    fill_in "Location", with: @progress_note.location
    fill_in "Mental status", with: @progress_note.mental_status
    fill_in "Patient", with: @progress_note.patient_id
    fill_in "Prognosis", with: @progress_note.prognosis
    fill_in "Progress note", with: @progress_note.progress_note
    fill_in "Progress to date", with: @progress_note.progress_to_date
    fill_in "Symptoms", with: @progress_note.symptoms
    fill_in "Time", with: @progress_note.time
    fill_in "Tx plan", with: @progress_note.tx_plan
    fill_in "User", with: @progress_note.user_id
    click_on "Update Progress note"

    assert_text "Progress note was successfully updated"
    click_on "Back"
  end

  test "destroying a Progress note" do
    visit progress_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Progress note was successfully destroyed"
  end
end
