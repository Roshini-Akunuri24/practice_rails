class AddColumnToDummies < ActiveRecord::Migration[7.0]
  def change
    add_column :dummies, :email, :string
  end
end
