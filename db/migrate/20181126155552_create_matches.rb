class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :buddy
      t.references :coordinator
      t.references :patient

      t.timestamps
    end

    add_foreign_key :matches, :users, column: :buddy_id, primary_key: :id
    add_foreign_key :matches, :users, column: :coordinator_id, primary_key: :id
    add_foreign_key :matches, :users, column: :patient_id, primary_key: :id
  end
end
