class DropInterestDetailsTable < ActiveRecord::Migration[5.2]
 def up
   drop_table :interest_details
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
