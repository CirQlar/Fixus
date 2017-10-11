class AddAssociationIndexes < ActiveRecord::Migration[5.1]
  def up
    add_index :repairs, :user_id
    add_index :addresses, :user_id
    add_index :devices, :user_id
    add_index :repairs, :device_id
    add_index :repairs, :address_id
  end
end
