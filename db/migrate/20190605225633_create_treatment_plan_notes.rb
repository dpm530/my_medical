class CreateTreatmentPlanNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :treatment_plan_notes do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :time
      t.string :diagnosis
      t.string :presenting_problem
      t.string :treatment_goals
      t.string :objective
      t.string :frequency
      t.string :note_type

      t.timestamps
    end
  end
end
