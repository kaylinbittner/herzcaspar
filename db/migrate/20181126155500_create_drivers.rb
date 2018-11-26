class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.references :buddy
      t.references :coordinator

      t.timestamps
    end

    add_foreign_key :drivers, :users, column: :buddy_id, primary_key: :id
    add_foreign_key :drivers, :users, column: :coordinator_id, primary_key: :id
  end
end
