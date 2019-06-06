class RenameTypeToNoteType < ActiveRecord::Migration[5.2]
  def change
     rename_column :progress_notes, :type, :note_type 
  end
end
