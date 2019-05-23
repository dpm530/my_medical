class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :mobile_phone
      t.string :email
      t.string :sex

      t.timestamps
    end
  end
end
