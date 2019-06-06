json.extract! intake_note, :id, :user_id, :patient_id, :note_type, :presenting_problem, :current_mental_status, :safety_issues, :background, :diagnosis, :date, :time, :created_at, :updated_at
json.url intake_note_url(intake_note, format: :json)
