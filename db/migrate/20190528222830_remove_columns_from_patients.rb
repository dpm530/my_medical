class RemoveColumnsFromPatients < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :dob, :date
    remove_column :patients, :mobile_phone, :string
    remove_column :patients, :sex, :string
  end
end
