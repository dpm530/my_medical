class CreateHealthInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :health_insurances do |t|
      t.string :company
      t.string :phone
      t.string :id_number
      t.string :group_number
      t.string :coverage
      t.string :copays
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
