class AddColumnToMigra < ActiveRecord::Migration[7.0]
  def change
    add_column :migras, :about, :text
  end
end
