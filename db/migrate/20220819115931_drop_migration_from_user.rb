class DropMigrationFromUser < ActiveRecord::Migration[7.0]
  def change
    drop_table :user
  end
end
