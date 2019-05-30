json.extract! general_information, :id, :blood_type, :height, :weight, :allergies, :organ_donor, :exercise, :alcohol, :tobacco, :drugs, :note, :patient, :created_at, :updated_at
json.url general_information_url(general_information, format: :json)
