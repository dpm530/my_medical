class AddColumnsToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :phone, :string
    add_column :patients, :address_line_1, :string
    add_column :patients, :address_line_2, :string
    add_column :patients, :city, :string
    add_column :patients, :state, :string
    add_column :patients, :zipcode, :string
  end
end
