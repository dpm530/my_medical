class RemoveRecordReferencesFromAllergies < ActiveRecord::Migration[5.2]
   def change
      remove_reference :allergies, :record, foreign_key: true
   end
end
