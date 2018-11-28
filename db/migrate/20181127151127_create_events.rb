class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.boolean :allday
      t.datetime :start
      t.datetime :end
      t.boolean :editable
      t.boolean :starteditable
      t.boolean :durationeditable
      t.text :description
      t.string :location
      t.references :coordinator

      t.timestamps
    end

      add_foreign_key :events, :users, column: :coordinator_id, primary_key: :id
  end
end
