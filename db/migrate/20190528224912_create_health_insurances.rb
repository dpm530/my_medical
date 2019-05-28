class CreateHealthInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :health_insurances do |t|
      t.string :company
      t.string :phone
      t.string :id_number
      t.string :coverage
      t.string :copay
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.text :note
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
