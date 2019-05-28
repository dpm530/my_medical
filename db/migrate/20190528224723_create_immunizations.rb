class CreateImmunizations < ActiveRecord::Migration[5.2]
  def change
    create_table :immunizations do |t|
      t.string :vaccine
      t.string :administered_by
      t.string :dosage
      t.string :manufacturer
      t.date :received_on
      t.date :expires_on
      t.text :note
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
