class CreateGeneralInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :general_informations do |t|
      t.string :blood_type
      t.string :height
      t.string :weight
      t.string :allergies
      t.string :organ_donor
      t.string :exercise
      t.string :alcohol
      t.string :tobacco
      t.string :drugs
      t.text :note
      t.text :patient

      t.timestamps
    end
  end
end
