class CreateAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :allergies do |t|
      t.string :allergen
      t.string :reaction
      t.string :severity
      t.text :note


      t.timestamps
    end
  end
end
