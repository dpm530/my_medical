class AddUserReferencesToAllergies < ActiveRecord::Migration[5.2]
  def change
      add_reference :allergies, :patient, index: true
  end
end
