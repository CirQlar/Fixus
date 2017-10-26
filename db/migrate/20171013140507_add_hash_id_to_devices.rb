class AddHashIdToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :hash_id, :string
    add_index :devices, :hash_id
  end
end
