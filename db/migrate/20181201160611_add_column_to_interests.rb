class AddColumnToInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :varient, :string
    add_column :interests, :photo, :string
  end
end
