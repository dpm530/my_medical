class AddNewColumnsToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :dob, :date
    add_column :patients, :employer, :string
    add_column :patients, :occupation, :string
  end
end
