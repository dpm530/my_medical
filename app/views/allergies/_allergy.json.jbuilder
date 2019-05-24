json.extract! allergy, :id, :allergen, :reaction, :severity, :note, :record_id, :created_at, :updated_at
json.url allergy_url(allergy, format: :json)
