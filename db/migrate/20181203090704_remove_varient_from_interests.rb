class RemoveVarientFromInterests < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :varient, :string
  end
end
