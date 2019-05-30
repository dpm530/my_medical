class AddPatientReferenceToEmergencyContact < ActiveRecord::Migration[5.2]
  def change
    add_reference :emergency_contacts, :patient, foreign_key: true
  end
end
