class RemoveColumnToMigra < ActiveRecord::Migration[7.0]
  def change
    remove_column :migras, :about, :text
  end
end
