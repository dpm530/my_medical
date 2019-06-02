json.extract! progress_note, :id, :user_id, :patient_id, :date, :time, :duration, :location, :mental_status, :symptoms, :dx, :prognosis, :progress_to_date, :tx_plan, :progress_note, :created_at, :updated_at
json.url progress_note_url(progress_note, format: :json)
