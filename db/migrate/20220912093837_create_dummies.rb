class CreateDummies < ActiveRecord::Migration[7.0]
  def change
    create_table :dummies do |t|
      t.string :name 
      t.text :body
      t.string :email
      t.timestamps
    end
  end
end
