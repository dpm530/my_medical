class RemovePatientFromGeneralInformation < ActiveRecord::Migration[5.2]
  def change
    remove_column :general_informations, :patient, :text
    add_reference :general_informations, :patient, index: true
  end
end
