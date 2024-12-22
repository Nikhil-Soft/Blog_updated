class CreateMangers < ActiveRecord::Migration[7.0]
  def change
    create_table :mangers do |t|

      t.timestamps
    end
  end
end
