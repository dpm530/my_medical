json.extract! emergency_contact, :id, :first_name, :last_name, :relationship, :phone1, :phone2, :email, :address_line_1, :address_line_2, :city, :state, :zipcode, :note, :created_at, :updated_at
json.url emergency_contact_url(emergency_contact, format: :json)
