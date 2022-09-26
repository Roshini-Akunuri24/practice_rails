class CreateRecalls < ActiveRecord::Migration[7.0]
  def change
    create_table :recalls do |t|

      t.timestamps
    end
  end
end
