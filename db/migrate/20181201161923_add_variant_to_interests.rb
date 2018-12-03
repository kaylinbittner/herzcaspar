class AddVariantToInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :variant, :string
  end
end
