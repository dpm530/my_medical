class CreateFamilyHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :family_histories do |t|
      t.string :first_name
      t.string :last_name
      t.string :relationship
      t.date :dob
      t.date :dod
      t.string :medical_history
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
