class ChangeInShop < ActiveRecord::Migration[7.0]
  def up
    change_column :shops, :holder_no, :string
  end
  def down
    change_column :shops, :holder_no, :integer
  end
end
