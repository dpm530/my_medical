class CreateEmergencyContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :emergency_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :relationship
      t.string :phone_1
      t.string :phone_2
      t.string :email
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
