class Patient < ApplicationRecord
   has_one :medication
   has_one :allergy
   has_one :general_information
   has_one :immunization
   has_one :health_insurance
   has_one :family_history
   has_one :emergency_contact
   has_one :diagnosis
   has_many :progress_notes


end
