class AddInShop < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :address, :string
    add_column :shops, :owner, :string
    add_column :shops, :owner_no, :string
    add_column :shops, :owner_adderess, :string 
  end
end
