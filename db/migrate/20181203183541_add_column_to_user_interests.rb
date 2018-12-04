class AddColumnToUserInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :user_interests, :transferer, :string
  end
end
