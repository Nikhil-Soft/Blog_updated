class AddInNews < ActiveRecord::Migration[7.0]
  def self.up 
    News.reset_column_information
    add_column(:news, :about, :string) unless News.column_names.include?('about')
  end
  def self.down 
    News.reset_column_information
    remove_column(:news, :about, :string) if News.column_names.include?('about')
  end
end
