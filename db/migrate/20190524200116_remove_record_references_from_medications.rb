class RemoveRecordReferencesFromMedications < ActiveRecord::Migration[5.2]
   def change
      remove_reference :medications, :record, foreign_key: true
   end
end
