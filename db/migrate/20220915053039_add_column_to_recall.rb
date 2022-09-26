class AddColumnToRecall < ActiveRecord::Migration[7.0]
  def change
    add_column :recalls, :name, :string
  end
end
