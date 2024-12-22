class RemoveInShop < ActiveRecord::Migration[7.0]
  def change
    remove_column :shops, :holder_address, :string
  end
end
