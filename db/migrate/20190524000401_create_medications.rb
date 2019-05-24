class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :drug_name
      t.string :dosage
      t.string :frequency
      t.date :began_on
      t.string :reason_taking
      t.string :side_effects
      t.text :note
      t.references :record, foreign_key: true

      t.timestamps
    end
  end
end
