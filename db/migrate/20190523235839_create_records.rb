class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :category
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
