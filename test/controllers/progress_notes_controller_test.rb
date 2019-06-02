require 'test_helper'

class ProgressNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progress_note = progress_notes(:one)
  end

  test "should get index" do
    get progress_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_progress_note_url
    assert_response :success
  end

  test "should create progress_note" do
    assert_difference('ProgressNote.count') do
      post progress_notes_url, params: { progress_note: { date: @progress_note.date, duration: @progress_note.duration, dx: @progress_note.dx, location: @progress_note.location, mental_status: @progress_note.mental_status, patient_id: @progress_note.patient_id, prognosis: @progress_note.prognosis, progress_note: @progress_note.progress_note, progress_to_date: @progress_note.progress_to_date, symptoms: @progress_note.symptoms, time: @progress_note.time, tx_plan: @progress_note.tx_plan, user_id: @progress_note.user_id } }
    end

    assert_redirected_to progress_note_url(ProgressNote.last)
  end

  test "should show progress_note" do
    get progress_note_url(@progress_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_progress_note_url(@progress_note)
    assert_response :success
  end

  test "should update progress_note" do
    patch progress_note_url(@progress_note), params: { progress_note: { date: @progress_note.date, duration: @progress_note.duration, dx: @progress_note.dx, location: @progress_note.location, mental_status: @progress_note.mental_status, patient_id: @progress_note.patient_id, prognosis: @progress_note.prognosis, progress_note: @progress_note.progress_note, progress_to_date: @progress_note.progress_to_date, symptoms: @progress_note.symptoms, time: @progress_note.time, tx_plan: @progress_note.tx_plan, user_id: @progress_note.user_id } }
    assert_redirected_to progress_note_url(@progress_note)
  end

  test "should destroy progress_note" do
    assert_difference('ProgressNote.count', -1) do
      delete progress_note_url(@progress_note)
    end

    assert_redirected_to progress_notes_url
  end
end
