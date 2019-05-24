json.extract! medication, :id, :drug_name, :dosage, :frequency, :began_on, :reason_taking, :side_effects, :note, :created_at, :updated_at
json.url medication_url(medication, format: :json)
