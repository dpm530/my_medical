class ChangeColumnItemInToDoLists < ActiveRecord::Migration[5.2]
  def change
     change_column :to_do_lists, :item, :string 
  end
end
