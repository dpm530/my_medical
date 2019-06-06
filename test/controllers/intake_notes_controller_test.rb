require 'test_helper'

class IntakeNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intake_note = intake_notes(:one)
  end

  test "should get index" do
    get intake_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_intake_note_url
    assert_response :success
  end

  test "should create intake_note" do
    assert_difference('IntakeNote.count') do
      post intake_notes_url, params: { intake_note: { background: @intake_note.background, current_mental_status: @intake_note.current_mental_status, date: @intake_note.date, diagnosis: @intake_note.diagnosis, note_type: @intake_note.note_type, patient_id: @intake_note.patient_id, presenting_problem: @intake_note.presenting_problem, safety_issues: @intake_note.safety_issues, time: @intake_note.time, user_id: @intake_note.user_id } }
    end

    assert_redirected_to intake_note_url(IntakeNote.last)
  end

  test "should show intake_note" do
    get intake_note_url(@intake_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_intake_note_url(@intake_note)
    assert_response :success
  end

  test "should update intake_note" do
    patch intake_note_url(@intake_note), params: { intake_note: { background: @intake_note.background, current_mental_status: @intake_note.current_mental_status, date: @intake_note.date, diagnosis: @intake_note.diagnosis, note_type: @intake_note.note_type, patient_id: @intake_note.patient_id, presenting_problem: @intake_note.presenting_problem, safety_issues: @intake_note.safety_issues, time: @intake_note.time, user_id: @intake_note.user_id } }
    assert_redirected_to intake_note_url(@intake_note)
  end

  test "should destroy intake_note" do
    assert_difference('IntakeNote.count', -1) do
      delete intake_note_url(@intake_note)
    end

    assert_redirected_to intake_notes_url
  end
end
