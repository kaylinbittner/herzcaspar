class CreateInterestDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :interest_details do |t|
      t.string :detail
      t.string :photo
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
