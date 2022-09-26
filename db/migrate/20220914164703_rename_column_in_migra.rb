class RenameColumnInMigra < ActiveRecord::Migration[7.0]
  def change
    rename_column :migras, :email, :emailID
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
