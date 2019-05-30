json.extract! immunization, :id, :vaccine, :received_on, :expired_on, :administered_by, :dosage, :manufacturer, :note, :patient_id, :created_at, :updated_at
json.url immunization_url(immunization, format: :json)
