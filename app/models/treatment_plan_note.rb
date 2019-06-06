class TreatmentPlanNote < ApplicationRecord
  belongs_to :user
  belongs_to :patient
end
