json.extract! health_insurance, :id, :company, :phone, :id_number, :group_number, :coverage, :copays, :patient_id, :created_at, :updated_at
json.url health_insurance_url(health_insurance, format: :json)
