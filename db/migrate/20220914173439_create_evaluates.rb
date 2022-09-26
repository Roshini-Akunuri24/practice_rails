class CreateEvaluates < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :phno

      t.timestamps
    end
  end
end
