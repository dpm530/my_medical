json.extract! family_history, :id, :first_name, :last_name, :relationship, :dob, :dod, :medical_history, :patient_id, :created_at, :updated_at
json.url family_history_url(family_history, format: :json)
