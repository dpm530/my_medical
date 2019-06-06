require 'test_helper'

class TreatmentPlanNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treatment_plan_note = treatment_plan_notes(:one)
  end

  test "should get index" do
    get treatment_plan_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_treatment_plan_note_url
    assert_response :success
  end

  test "should create treatment_plan_note" do
    assert_difference('TreatmentPlanNote.count') do
      post treatment_plan_notes_url, params: { treatment_plan_note: { date: @treatment_plan_note.date, diagnosis: @treatment_plan_note.diagnosis, frequency: @treatment_plan_note.frequency, note_type: @treatment_plan_note.note_type, objective: @treatment_plan_note.objective, patient_id: @treatment_plan_note.patient_id, presenting_problem: @treatment_plan_note.presenting_problem, time: @treatment_plan_note.time, treatment_goals: @treatment_plan_note.treatment_goals, user_id: @treatment_plan_note.user_id } }
    end

    assert_redirected_to treatment_plan_note_url(TreatmentPlanNote.last)
  end

  test "should show treatment_plan_note" do
    get treatment_plan_note_url(@treatment_plan_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_treatment_plan_note_url(@treatment_plan_note)
    assert_response :success
  end

  test "should update treatment_plan_note" do
    patch treatment_plan_note_url(@treatment_plan_note), params: { treatment_plan_note: { date: @treatment_plan_note.date, diagnosis: @treatment_plan_note.diagnosis, frequency: @treatment_plan_note.frequency, note_type: @treatment_plan_note.note_type, objective: @treatment_plan_note.objective, patient_id: @treatment_plan_note.patient_id, presenting_problem: @treatment_plan_note.presenting_problem, time: @treatment_plan_note.time, treatment_goals: @treatment_plan_note.treatment_goals, user_id: @treatment_plan_note.user_id } }
    assert_redirected_to treatment_plan_note_url(@treatment_plan_note)
  end

  test "should destroy treatment_plan_note" do
    assert_difference('TreatmentPlanNote.count', -1) do
      delete treatment_plan_note_url(@treatment_plan_note)
    end

    assert_redirected_to treatment_plan_notes_url
  end
end
