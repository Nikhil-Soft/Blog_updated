class ChangetypeInShop < ActiveRecord::Migration[7.0]
  def change
    change_column :shops, :holder_no, :integer
  end
end
