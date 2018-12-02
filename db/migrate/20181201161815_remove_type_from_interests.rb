class RemoveTypeFromInterests < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :type, :String
  end
end
