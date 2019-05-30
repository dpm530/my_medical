class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.date :onset
      t.string :diagnosis
      t.string :treatment
      t.text :note
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
