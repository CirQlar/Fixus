class AddHashIdToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :hash_id, :string
    add_index :addresses, :hash_id
  end
end
