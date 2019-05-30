json.extract! diagnosis, :id, :onset, :diagnosis, :treatment, :note, :patient, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
