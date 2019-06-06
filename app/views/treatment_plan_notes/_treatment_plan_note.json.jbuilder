json.extract! treatment_plan_note, :id, :user_id, :patient_id, :date, :time, :diagnosis, :presenting_problem, :treatment_goals, :objective, :frequency, :note_type, :created_at, :updated_at
json.url treatment_plan_note_url(treatment_plan_note, format: :json)
