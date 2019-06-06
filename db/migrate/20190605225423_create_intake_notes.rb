class CreateIntakeNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :intake_notes do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.string :note_type
      t.string :presenting_problem
      t.string :current_mental_status
      t.string :safety_issues
      t.string :background
      t.string :diagnosis
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
