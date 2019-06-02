class CreateProgressNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_notes do |t|
      t.references :user, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :time
      t.integer :duration
      t.string :location
      t.string :mental_status
      t.string :symptoms
      t.string :dx
      t.string :prognosis
      t.string :progress_to_date
      t.string :tx_plan
      t.text :progress_note

      t.timestamps
    end
  end
end
