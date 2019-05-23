json.extract! record, :id, :category, :patient_id, :created_at, :updated_at
json.url record_url(record, format: :json)
