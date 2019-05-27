class AddUserReferencesToMedications < ActiveRecord::Migration[5.2]
  def change
     add_reference :medications, :patient, index: true
  end
end
