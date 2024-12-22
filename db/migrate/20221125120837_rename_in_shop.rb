class RenameInShop < ActiveRecord::Migration[7.0]
  def change
    rename_column :shops, :owner, :holder
    rename_column :shops, :owner_no, :holder_no
    rename_column :shops, :owner_adderess, :holder_address
  end
end
