class RemoveBioFromInterests < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :bio, :text
  end
end
