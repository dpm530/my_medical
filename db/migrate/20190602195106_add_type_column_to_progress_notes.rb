class AddTypeColumnToProgressNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :progress_notes, :type, :string
  end
end
