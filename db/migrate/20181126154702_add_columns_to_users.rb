class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :role, :string
    add_column :users, :phone, :string
    add_column :users, :gender, :string
    add_column :users, :city, :string
  end
end